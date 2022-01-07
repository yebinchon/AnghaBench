
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int rev; } ;


 int EINVAL ;
 int FC_SRAM_1_32KB ;
 int FC_SRAM_1_48KB ;



 int flexcop_sram_set_chip (struct flexcop_device*,int ) ;

int flexcop_sram_init(struct flexcop_device *fc)
{
 switch (fc->rev) {
 case 130:
 case 129:
  flexcop_sram_set_chip(fc, FC_SRAM_1_32KB);
  break;
 case 128:
  flexcop_sram_set_chip(fc, FC_SRAM_1_48KB);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
