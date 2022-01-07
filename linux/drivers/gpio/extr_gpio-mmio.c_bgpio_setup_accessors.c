
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int bgpio_bits; int write_reg; int read_reg; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int bgpio_read16 ;
 int bgpio_read16be ;
 int bgpio_read32 ;
 int bgpio_read32be ;
 int bgpio_read64 ;
 int bgpio_read8 ;
 int bgpio_write16 ;
 int bgpio_write16be ;
 int bgpio_write32 ;
 int bgpio_write32be ;
 int bgpio_write64 ;
 int bgpio_write8 ;
 int dev_err (struct device*,char*,...) ;

__attribute__((used)) static int bgpio_setup_accessors(struct device *dev,
     struct gpio_chip *gc,
     bool byte_be)
{

 switch (gc->bgpio_bits) {
 case 8:
  gc->read_reg = bgpio_read8;
  gc->write_reg = bgpio_write8;
  break;
 case 16:
  if (byte_be) {
   gc->read_reg = bgpio_read16be;
   gc->write_reg = bgpio_write16be;
  } else {
   gc->read_reg = bgpio_read16;
   gc->write_reg = bgpio_write16;
  }
  break;
 case 32:
  if (byte_be) {
   gc->read_reg = bgpio_read32be;
   gc->write_reg = bgpio_write32be;
  } else {
   gc->read_reg = bgpio_read32;
   gc->write_reg = bgpio_write32;
  }
  break;
 default:
  dev_err(dev, "unsupported data width %u bits\n", gc->bgpio_bits);
  return -EINVAL;
 }

 return 0;
}
