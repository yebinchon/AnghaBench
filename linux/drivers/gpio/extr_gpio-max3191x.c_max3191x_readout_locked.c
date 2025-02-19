
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct spi_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ rx_buf; } ;
struct TYPE_4__ {struct device* parent; } ;
struct max3191x_chip {int nchips; scalar_t__ mode; int fault; TYPE_3__* fault_pins; int ignore_uv; int undervolt2; int undervolt1; int overtemp; int crc_error; TYPE_2__ xfer; int mesg; TYPE_1__ gpio; } ;
struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int ndescs; struct gpio_desc** desc; } ;


 scalar_t__ STATUS_BYTE_ENABLED ;
 int __assign_bit (int,int ,int) ;
 int crc8 (int ,int*,int,int ) ;
 int dev_err_ratelimited (struct device*,char*,int) ;
 int dev_warn_ratelimited (struct device*,char*,int) ;
 int gpiod_get_value_cansleep (struct gpio_desc*) ;
 int max3191x_crc8 ;
 int spi_sync (struct spi_device*,int *) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int max3191x_readout_locked(struct max3191x_chip *max3191x)
{
 struct device *dev = max3191x->gpio.parent;
 struct spi_device *spi = to_spi_device(dev);
 int val, i, ot = 0, uv1 = 0;

 val = spi_sync(spi, &max3191x->mesg);
 if (val) {
  dev_err_ratelimited(dev, "SPI receive error %d\n", val);
  return val;
 }

 for (i = 0; i < max3191x->nchips; i++) {
  if (max3191x->mode == STATUS_BYTE_ENABLED) {
   u8 in = ((u8 *)max3191x->xfer.rx_buf)[i * 2];
   u8 status = ((u8 *)max3191x->xfer.rx_buf)[i * 2 + 1];

   val = (status & 0xf8) != crc8(max3191x_crc8, &in, 1, 0);
   __assign_bit(i, max3191x->crc_error, val);
   if (val)
    dev_err_ratelimited(dev,
     "chip %d: CRC error\n", i);

   ot = (status >> 1) & 1;
   __assign_bit(i, max3191x->overtemp, ot);
   if (ot)
    dev_err_ratelimited(dev,
     "chip %d: overtemperature\n", i);

   if (!max3191x->ignore_uv) {
    uv1 = !((status >> 2) & 1);
    __assign_bit(i, max3191x->undervolt1, uv1);
    if (uv1)
     dev_err_ratelimited(dev,
      "chip %d: undervoltage\n", i);

    val = !(status & 1);
    __assign_bit(i, max3191x->undervolt2, val);
    if (val && !uv1)
     dev_warn_ratelimited(dev,
      "chip %d: voltage warn\n", i);
   }
  }

  if (max3191x->fault_pins && !max3191x->ignore_uv) {

   struct gpio_desc *fault_pin =
    (max3191x->fault_pins->ndescs == 1)
     ? max3191x->fault_pins->desc[0]
     : max3191x->fault_pins->desc[i];

   val = gpiod_get_value_cansleep(fault_pin);
   if (val < 0) {
    dev_err_ratelimited(dev,
     "GPIO read error %d\n", val);
    return val;
   }
   __assign_bit(i, max3191x->fault, val);
   if (val && !uv1 && !ot)
    dev_err_ratelimited(dev,
     "chip %d: fault\n", i);
  }
 }

 return 0;
}
