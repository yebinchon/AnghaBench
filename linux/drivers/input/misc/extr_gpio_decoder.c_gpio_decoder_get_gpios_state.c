
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int ndescs; int * desc; } ;
struct gpio_decoder {int dev; struct gpio_descs* input_gpios; } ;


 int desc_to_gpio (int ) ;
 int dev_err (int ,char*,int ,int) ;
 int gpiod_get_value_cansleep (int ) ;

__attribute__((used)) static int gpio_decoder_get_gpios_state(struct gpio_decoder *decoder)
{
 struct gpio_descs *gpios = decoder->input_gpios;
 unsigned int ret = 0;
 int i, val;

 for (i = 0; i < gpios->ndescs; i++) {
  val = gpiod_get_value_cansleep(gpios->desc[i]);
  if (val < 0) {
   dev_err(decoder->dev,
    "Error reading gpio %d: %d\n",
    desc_to_gpio(gpios->desc[i]), val);
   return val;
  }

  val = !!val;
  ret = (ret << 1) | val;
 }

 return ret;
}
