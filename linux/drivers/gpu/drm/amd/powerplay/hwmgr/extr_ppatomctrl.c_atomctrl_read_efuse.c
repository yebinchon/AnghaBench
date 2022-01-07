
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {struct amdgpu_device* adev; } ;
struct TYPE_5__ {int atom_context; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_4__ {void* ucBitLength; void* ucBitShift; int usEfuseIndex; } ;
struct TYPE_6__ {int ulEfuseValue; TYPE_1__ sEfuse; } ;
typedef TYPE_3__ READ_EFUSE_VALUE_PARAMETER ;


 int COMMAND ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int ReadEfuseValue ;
 int amdgpu_atom_execute_table (int ,int ,int*) ;
 int cpu_to_le16 (int) ;
 int le32_to_cpu (int ) ;

int atomctrl_read_efuse(struct pp_hwmgr *hwmgr, uint16_t start_index,
  uint16_t end_index, uint32_t mask, uint32_t *efuse)
{
 struct amdgpu_device *adev = hwmgr->adev;
 int result;
 READ_EFUSE_VALUE_PARAMETER efuse_param;

 efuse_param.sEfuse.usEfuseIndex = cpu_to_le16((start_index / 32) * 4);
 efuse_param.sEfuse.ucBitShift = (uint8_t)
   (start_index - ((start_index / 32) * 32));
 efuse_param.sEfuse.ucBitLength = (uint8_t)
   ((end_index - start_index) + 1);

 result = amdgpu_atom_execute_table(adev->mode_info.atom_context,
   GetIndexIntoMasterTable(COMMAND, ReadEfuseValue),
   (uint32_t *)&efuse_param);
 *efuse = result ? 0 : le32_to_cpu(efuse_param.ulEfuseValue) & mask;

 return result;
}
