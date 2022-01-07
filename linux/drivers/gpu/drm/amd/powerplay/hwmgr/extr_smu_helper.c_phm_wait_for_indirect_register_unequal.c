
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int * device; } ;


 int EINVAL ;
 int cgs_write_register (int *,scalar_t__,scalar_t__) ;
 int phm_wait_for_register_unequal (struct pp_hwmgr*,scalar_t__,scalar_t__,scalar_t__) ;

int phm_wait_for_indirect_register_unequal(struct pp_hwmgr *hwmgr,
      uint32_t indirect_port,
      uint32_t index,
      uint32_t value,
      uint32_t mask)
{
 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return -EINVAL;

 cgs_write_register(hwmgr->device, indirect_port, index);
 return phm_wait_for_register_unequal(hwmgr, indirect_port + 1,
      value, mask);
}
