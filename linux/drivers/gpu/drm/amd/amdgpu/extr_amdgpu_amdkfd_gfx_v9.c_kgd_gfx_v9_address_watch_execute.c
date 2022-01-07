
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;



int kgd_gfx_v9_address_watch_execute(struct kgd_dev *kgd,
     unsigned int watch_point_id,
     uint32_t cntl_val,
     uint32_t addr_hi,
     uint32_t addr_lo)
{
 return 0;
}
