
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int * device; } ;


 int cgs_read_register (int *,int ) ;
 int mmSMU_MP1_SRBM2P_ARG_0 ;

__attribute__((used)) static uint32_t smu8_get_argument(struct pp_hwmgr *hwmgr)
{
 if (hwmgr == ((void*)0) || hwmgr->device == ((void*)0))
  return 0;

 return cgs_read_register(hwmgr->device,
     mmSMU_MP1_SRBM2P_ARG_0);
}
