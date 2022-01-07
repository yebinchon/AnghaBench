
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MC; } ;
struct pp_hwmgr {int device; TYPE_1__ microcode_version_info; } ;


 int cgs_read_register (int ,int ) ;
 int cgs_write_register (int ,int ,int) ;
 int mmMC_SEQ_IO_DEBUG_DATA ;
 int mmMC_SEQ_IO_DEBUG_INDEX ;

__attribute__((used)) static int smu7_get_mc_microcode_version(struct pp_hwmgr *hwmgr)
{
 cgs_write_register(hwmgr->device, mmMC_SEQ_IO_DEBUG_INDEX, 0x9F);

 hwmgr->microcode_version_info.MC = cgs_read_register(hwmgr->device, mmMC_SEQ_IO_DEBUG_DATA);

 return 0;
}
