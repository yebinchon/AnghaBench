
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_dma; int has_cfb_3keys; } ;
struct atmel_tdes_dev {int hw_version; int dev; TYPE_1__ caps; } ;


 int dev_warn (int ,char*) ;

__attribute__((used)) static void atmel_tdes_get_cap(struct atmel_tdes_dev *dd)
{

 dd->caps.has_dma = 0;
 dd->caps.has_cfb_3keys = 0;


 switch (dd->hw_version & 0xf00) {
 case 0x700:
  dd->caps.has_dma = 1;
  dd->caps.has_cfb_3keys = 1;
  break;
 case 0x600:
  break;
 default:
  dev_warn(dd->dev,
    "Unmanaged tdes version, set minimum capabilities\n");
  break;
 }
}
