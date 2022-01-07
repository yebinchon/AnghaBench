
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i40iw_sc_dev {int debug_mask; } ;
typedef enum i40iw_debug_flag { ____Placeholder_i40iw_debug_flag } i40iw_debug_flag ;


 int i40iw_debug (struct i40iw_sc_dev*,int,char*,...) ;
 scalar_t__ virt_to_phys (int *) ;

void i40iw_debug_buf(struct i40iw_sc_dev *dev,
       enum i40iw_debug_flag mask,
       char *desc,
       u64 *buf,
       u32 size)
{
 u32 i;

 if (!(dev->debug_mask & mask))
  return;
 i40iw_debug(dev, mask, "%s\n", desc);
 i40iw_debug(dev, mask, "starting address virt=%p phy=%llxh\n", buf,
      (unsigned long long)virt_to_phys(buf));

 for (i = 0; i < size; i += 8)
  i40iw_debug(dev, mask, "index %03d val: %016llx\n", i, buf[i / 8]);
}
