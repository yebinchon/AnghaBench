
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_devdata {int revision; } ;


 int CCE_REVISION_CHIP_REV_MINOR_MASK ;
 int CCE_REVISION_CHIP_REV_MINOR_SHIFT ;

int is_bx(struct hfi1_devdata *dd)
{
 u8 chip_rev_minor =
  dd->revision >> CCE_REVISION_CHIP_REV_MINOR_SHIFT
   & CCE_REVISION_CHIP_REV_MINOR_MASK;
 return (chip_rev_minor & 0xF0) == 0x10;
}
