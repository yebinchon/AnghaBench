
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct spi_device {int modalias; struct device dev; } ;
struct TYPE_7__ {int base; int ngpio; int can_sleep; int set_config; int get_multiple; int get; int set_multiple; int set; int direction_output; int direction_input; int get_direction; struct device* parent; int owner; int label; } ;
struct TYPE_6__ {int len; void* rx_buf; } ;
struct max3191x_chip {int nchips; int lock; TYPE_3__ gpio; TYPE_2__ xfer; int mesg; TYPE_4__* db1_pins; TYPE_4__* db0_pins; scalar_t__ ignore_uv; int mode; TYPE_1__* modesel_pins; void* fault_pins; void* fault; void* undervolt2; void* overtemp; void* undervolt1; void* crc_error; } ;
struct TYPE_8__ {scalar_t__ ndescs; } ;
struct TYPE_5__ {int info; int desc; int ndescs; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int MAX3191X_NGPIO ;
 int STATUS_BYTE_DISABLED ;
 int STATUS_BYTE_ENABLED ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 void* devm_gpiod_get_array_optional_count (struct device*,char*,int ,int) ;
 int devm_gpiod_put_array (struct device*,TYPE_4__*) ;
 void* devm_kcalloc (struct device*,int,int,int ) ;
 struct max3191x_chip* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_add_data (TYPE_3__*,struct max3191x_chip*) ;
 int gpiod_set_array_single_value_cansleep (int ,int ,int ,int ) ;
 int max3191x_direction_input ;
 int max3191x_direction_output ;
 int max3191x_get ;
 int max3191x_get_direction ;
 int max3191x_get_multiple ;
 int max3191x_set ;
 int max3191x_set_config ;
 int max3191x_set_multiple ;
 int max3191x_wordlen (struct max3191x_chip*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spi_message_init_with_transfers (int *,TYPE_2__*,int) ;
 int spi_set_drvdata (struct spi_device*,struct max3191x_chip*) ;

__attribute__((used)) static int max3191x_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 struct max3191x_chip *max3191x;
 int n, ret;

 max3191x = devm_kzalloc(dev, sizeof(*max3191x), GFP_KERNEL);
 if (!max3191x)
  return -ENOMEM;
 spi_set_drvdata(spi, max3191x);

 max3191x->nchips = 1;
 device_property_read_u32(dev, "#daisy-chained-devices",
     &max3191x->nchips);

 n = BITS_TO_LONGS(max3191x->nchips);
 max3191x->crc_error = devm_kcalloc(dev, n, sizeof(long), GFP_KERNEL);
 max3191x->undervolt1 = devm_kcalloc(dev, n, sizeof(long), GFP_KERNEL);
 max3191x->undervolt2 = devm_kcalloc(dev, n, sizeof(long), GFP_KERNEL);
 max3191x->overtemp = devm_kcalloc(dev, n, sizeof(long), GFP_KERNEL);
 max3191x->fault = devm_kcalloc(dev, n, sizeof(long), GFP_KERNEL);
 max3191x->xfer.rx_buf = devm_kcalloc(dev, max3191x->nchips,
        2, GFP_KERNEL);
 if (!max3191x->crc_error || !max3191x->undervolt1 ||
     !max3191x->overtemp || !max3191x->undervolt2 ||
     !max3191x->fault || !max3191x->xfer.rx_buf)
  return -ENOMEM;

 max3191x->modesel_pins = devm_gpiod_get_array_optional_count(dev,
     "maxim,modesel", GPIOD_ASIS, max3191x->nchips);
 max3191x->fault_pins = devm_gpiod_get_array_optional_count(dev,
     "maxim,fault", GPIOD_IN, max3191x->nchips);
 max3191x->db0_pins = devm_gpiod_get_array_optional_count(dev,
     "maxim,db0", GPIOD_OUT_LOW, max3191x->nchips);
 max3191x->db1_pins = devm_gpiod_get_array_optional_count(dev,
     "maxim,db1", GPIOD_OUT_LOW, max3191x->nchips);

 max3191x->mode = device_property_read_bool(dev, "maxim,modesel-8bit")
     ? STATUS_BYTE_DISABLED : STATUS_BYTE_ENABLED;
 if (max3191x->modesel_pins)
  gpiod_set_array_single_value_cansleep(
     max3191x->modesel_pins->ndescs,
     max3191x->modesel_pins->desc,
     max3191x->modesel_pins->info, max3191x->mode);

 max3191x->ignore_uv = device_property_read_bool(dev,
        "maxim,ignore-undervoltage");

 if (max3191x->db0_pins && max3191x->db1_pins &&
     max3191x->db0_pins->ndescs != max3191x->db1_pins->ndescs) {
  dev_err(dev, "ignoring maxim,db*-gpios: array len mismatch\n");
  devm_gpiod_put_array(dev, max3191x->db0_pins);
  devm_gpiod_put_array(dev, max3191x->db1_pins);
  max3191x->db0_pins = ((void*)0);
  max3191x->db1_pins = ((void*)0);
 }

 max3191x->xfer.len = max3191x->nchips * max3191x_wordlen(max3191x);
 spi_message_init_with_transfers(&max3191x->mesg, &max3191x->xfer, 1);

 max3191x->gpio.label = spi->modalias;
 max3191x->gpio.owner = THIS_MODULE;
 max3191x->gpio.parent = dev;
 max3191x->gpio.base = -1;
 max3191x->gpio.ngpio = max3191x->nchips * MAX3191X_NGPIO;
 max3191x->gpio.can_sleep = 1;

 max3191x->gpio.get_direction = max3191x_get_direction;
 max3191x->gpio.direction_input = max3191x_direction_input;
 max3191x->gpio.direction_output = max3191x_direction_output;
 max3191x->gpio.set = max3191x_set;
 max3191x->gpio.set_multiple = max3191x_set_multiple;
 max3191x->gpio.get = max3191x_get;
 max3191x->gpio.get_multiple = max3191x_get_multiple;
 max3191x->gpio.set_config = max3191x_set_config;

 mutex_init(&max3191x->lock);

 ret = gpiochip_add_data(&max3191x->gpio, max3191x);
 if (ret) {
  mutex_destroy(&max3191x->lock);
  return ret;
 }

 return 0;
}
