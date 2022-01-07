
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_13__ {int addr; struct st_lsm6dsx_ext_dev_settings const* settings; } ;
struct st_lsm6dsx_sensor {int id; int watermark; int name; TYPE_6__ ext_info; int gain; int odr; struct st_lsm6dsx_hw* hw; } ;
struct st_lsm6dsx_hw {int dev; } ;
struct TYPE_14__ {int addr; } ;
struct TYPE_12__ {TYPE_4__* fs_avl; } ;
struct TYPE_10__ {TYPE_2__* odr_avl; } ;
struct st_lsm6dsx_ext_dev_settings {int id; TYPE_7__ out; TYPE_5__ fs_table; TYPE_3__ odr_table; } ;
struct TYPE_8__ {int parent; } ;
struct iio_dev {int name; int num_channels; struct iio_chan_spec* channels; int available_scan_masks; int * info; TYPE_1__ dev; int modes; } ;
struct iio_chan_spec {int dummy; } ;
typedef int magn_channels ;
typedef enum st_lsm6dsx_sensor_id { ____Placeholder_st_lsm6dsx_sensor_id } st_lsm6dsx_sensor_id ;
struct TYPE_11__ {int gain; } ;
struct TYPE_9__ {int hz; } ;


 int ARRAY_SIZE (struct iio_chan_spec const*) ;
 int GFP_KERNEL ;
 struct iio_chan_spec const IIO_CHAN_SOFT_TIMESTAMP (int) ;
 int IIO_MAGN ;
 int IIO_MOD_X ;
 int IIO_MOD_Y ;
 int IIO_MOD_Z ;
 int INDIO_DIRECT_MODE ;
 struct iio_chan_spec const ST_LSM6DSX_CHANNEL (int ,int ,int ,int) ;

 struct iio_dev* devm_iio_device_alloc (int ,int) ;
 struct iio_chan_spec* devm_kzalloc (int ,int,int ) ;
 struct st_lsm6dsx_sensor* iio_priv (struct iio_dev*) ;
 int memcpy (struct iio_chan_spec*,struct iio_chan_spec const*,int) ;
 int scnprintf (int ,int,char*,char const*) ;
 int st_lsm6dsx_available_scan_masks ;
 int st_lsm6dsx_ext_info ;

__attribute__((used)) static struct iio_dev *
st_lsm6dsx_shub_alloc_iiodev(struct st_lsm6dsx_hw *hw,
        enum st_lsm6dsx_sensor_id id,
        const struct st_lsm6dsx_ext_dev_settings *info,
        u8 i2c_addr, const char *name)
{
 struct iio_chan_spec *ext_channels;
 struct st_lsm6dsx_sensor *sensor;
 struct iio_dev *iio_dev;

 iio_dev = devm_iio_device_alloc(hw->dev, sizeof(*sensor));
 if (!iio_dev)
  return ((void*)0);

 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->dev.parent = hw->dev;
 iio_dev->info = &st_lsm6dsx_ext_info;

 sensor = iio_priv(iio_dev);
 sensor->id = id;
 sensor->hw = hw;
 sensor->odr = info->odr_table.odr_avl[0].hz;
 sensor->gain = info->fs_table.fs_avl[0].gain;
 sensor->ext_info.settings = info;
 sensor->ext_info.addr = i2c_addr;
 sensor->watermark = 1;

 switch (info->id) {
 case 128: {
  const struct iio_chan_spec magn_channels[] = {
   ST_LSM6DSX_CHANNEL(IIO_MAGN, info->out.addr,
        IIO_MOD_X, 0),
   ST_LSM6DSX_CHANNEL(IIO_MAGN, info->out.addr + 2,
        IIO_MOD_Y, 1),
   ST_LSM6DSX_CHANNEL(IIO_MAGN, info->out.addr + 4,
        IIO_MOD_Z, 2),
   IIO_CHAN_SOFT_TIMESTAMP(3),
  };

  ext_channels = devm_kzalloc(hw->dev, sizeof(magn_channels),
         GFP_KERNEL);
  if (!ext_channels)
   return ((void*)0);

  memcpy(ext_channels, magn_channels, sizeof(magn_channels));
  iio_dev->available_scan_masks = st_lsm6dsx_available_scan_masks;
  iio_dev->channels = ext_channels;
  iio_dev->num_channels = ARRAY_SIZE(magn_channels);

  scnprintf(sensor->name, sizeof(sensor->name), "%s_magn",
     name);
  break;
 }
 default:
  return ((void*)0);
 }
 iio_dev->name = sensor->name;

 return iio_dev;
}
