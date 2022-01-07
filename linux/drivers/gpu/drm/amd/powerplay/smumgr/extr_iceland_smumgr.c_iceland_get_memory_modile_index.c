
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pp_hwmgr {int device; } ;


 int cgs_read_register (int ,int ) ;
 int mmBIOS_SCRATCH_4 ;

__attribute__((used)) static uint8_t iceland_get_memory_modile_index(struct pp_hwmgr *hwmgr)
{
 return (uint8_t) (0xFF & (cgs_read_register(hwmgr->device, mmBIOS_SCRATCH_4) >> 16));
}
