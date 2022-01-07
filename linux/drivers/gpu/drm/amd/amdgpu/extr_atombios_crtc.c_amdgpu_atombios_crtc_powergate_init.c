
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int atom_context; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;
typedef int args ;
struct TYPE_5__ {int ucEnable; } ;
typedef TYPE_2__ ENABLE_DISP_POWER_GATING_PS_ALLOCATION ;


 int ATOM_INIT ;
 int COMMAND ;
 int EnableDispPowerGating ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int amdgpu_atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;

void amdgpu_atombios_crtc_powergate_init(struct amdgpu_device *adev)
{
 int index = GetIndexIntoMasterTable(COMMAND, EnableDispPowerGating);
 ENABLE_DISP_POWER_GATING_PS_ALLOCATION args;

 memset(&args, 0, sizeof(args));

 args.ucEnable = ATOM_INIT;

 amdgpu_atom_execute_table(adev->mode_info.atom_context, index, (uint32_t *)&args);
}
