
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu7_hwmgr {int is_memory_gddr5; } ;
struct pp_hwmgr {struct amdgpu_device* adev; scalar_t__ backend; } ;
struct TYPE_2__ {scalar_t__ vram_type; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 scalar_t__ AMDGPU_VRAM_TYPE_GDDR5 ;

__attribute__((used)) static int smu7_get_memory_type(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct amdgpu_device *adev = hwmgr->adev;

 data->is_memory_gddr5 = (adev->gmc.vram_type == AMDGPU_VRAM_TYPE_GDDR5);

 return 0;
}
