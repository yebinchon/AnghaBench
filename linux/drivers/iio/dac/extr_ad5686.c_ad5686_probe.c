
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {char const* name; int num_channels; int channels; int modes; int * info; TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ad5686_state {int (* write ) (struct ad5686_state*,int ,int ,int) ;int vref_mv; int pwr_down_mode; int use_internal_vref; int reg; TYPE_2__* chip_info; int read; struct device* dev; } ;
typedef enum ad5686_supported_device_ids { ____Placeholder_ad5686_supported_device_ids } ad5686_supported_device_ids ;
typedef int (* ad5686_write_func ) (struct ad5686_state*,int ,int ,int) ;
typedef int ad5686_read_func ;
struct TYPE_4__ {int int_vref_mv; int num_channels; int regmap_type; int channels; } ;


 unsigned int AD5310_REF_BIT_MSK ;

 unsigned int AD5683_REF_BIT_MSK ;

 int AD5686_CMD_CONTROL_REG ;
 int AD5686_CMD_INTERNAL_REFER_SETUP ;

 unsigned int AD5693_REF_BIT_MSK ;

 int EINVAL ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;
 TYPE_2__* ad5686_chip_info_tbl ;
 int ad5686_info ;
 int dev_set_drvdata (struct device*,struct iio_dev*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_regulator_get_optional (struct device*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5686_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 int stub1 (struct ad5686_state*,int ,int ,int) ;

int ad5686_probe(struct device *dev,
   enum ad5686_supported_device_ids chip_type,
   const char *name, ad5686_write_func write,
   ad5686_read_func read)
{
 struct ad5686_state *st;
 struct iio_dev *indio_dev;
 unsigned int val, ref_bit_msk;
 u8 cmd;
 int ret, i, voltage_uv = 0;

 indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);
 dev_set_drvdata(dev, indio_dev);

 st->dev = dev;
 st->write = write;
 st->read = read;

 st->reg = devm_regulator_get_optional(dev, "vcc");
 if (!IS_ERR(st->reg)) {
  ret = regulator_enable(st->reg);
  if (ret)
   return ret;

  ret = regulator_get_voltage(st->reg);
  if (ret < 0)
   goto error_disable_reg;

  voltage_uv = ret;
 }

 st->chip_info = &ad5686_chip_info_tbl[chip_type];

 if (voltage_uv)
  st->vref_mv = voltage_uv / 1000;
 else
  st->vref_mv = st->chip_info->int_vref_mv;


 for (i = 0; i < st->chip_info->num_channels; i++)
  st->pwr_down_mode |= (0x01 << (i * 2));

 indio_dev->dev.parent = dev;
 indio_dev->name = name;
 indio_dev->info = &ad5686_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;

 switch (st->chip_info->regmap_type) {
 case 131:
  cmd = AD5686_CMD_CONTROL_REG;
  ref_bit_msk = AD5310_REF_BIT_MSK;
  st->use_internal_vref = !voltage_uv;
  break;
 case 130:
  cmd = AD5686_CMD_CONTROL_REG;
  ref_bit_msk = AD5683_REF_BIT_MSK;
  st->use_internal_vref = !voltage_uv;
  break;
 case 129:
  cmd = AD5686_CMD_INTERNAL_REFER_SETUP;
  ref_bit_msk = 0;
  break;
 case 128:
  cmd = AD5686_CMD_CONTROL_REG;
  ref_bit_msk = AD5693_REF_BIT_MSK;
  st->use_internal_vref = !voltage_uv;
  break;
 default:
  ret = -EINVAL;
  goto error_disable_reg;
 }

 val = (voltage_uv | ref_bit_msk);

 ret = st->write(st, cmd, 0, !!val);
 if (ret)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_disable_reg;

 return 0;

error_disable_reg:
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);
 return ret;
}
