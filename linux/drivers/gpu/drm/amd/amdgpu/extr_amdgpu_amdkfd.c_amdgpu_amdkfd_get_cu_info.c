
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kgd_dev {int dummy; } ;
struct kfd_cu_info {int lds_size; int max_scratch_slots_per_cu; int wave_front_size; int max_waves_per_simd; int simd_per_cu; int num_cu_per_sh; int num_shader_arrays_per_engine; int num_shader_engines; int * cu_bitmap; int cu_ao_mask; int cu_active_number; } ;
struct TYPE_3__ {int max_cu_per_sh; int max_sh_per_se; int max_shader_engines; } ;
struct amdgpu_cu_info {int lds_size; int max_scratch_slots_per_cu; int wave_front_size; int max_waves_per_simd; int simd_per_cu; int * bitmap; int ao_cu_mask; int number; } ;
struct TYPE_4__ {TYPE_1__ config; struct amdgpu_cu_info cu_info; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int memcpy (int *,int *,int) ;
 int memset (struct kfd_cu_info*,int ,int) ;

void amdgpu_amdkfd_get_cu_info(struct kgd_dev *kgd, struct kfd_cu_info *cu_info)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)kgd;
 struct amdgpu_cu_info acu_info = adev->gfx.cu_info;

 memset(cu_info, 0, sizeof(*cu_info));
 if (sizeof(cu_info->cu_bitmap) != sizeof(acu_info.bitmap))
  return;

 cu_info->cu_active_number = acu_info.number;
 cu_info->cu_ao_mask = acu_info.ao_cu_mask;
 memcpy(&cu_info->cu_bitmap[0], &acu_info.bitmap[0],
        sizeof(acu_info.bitmap));
 cu_info->num_shader_engines = adev->gfx.config.max_shader_engines;
 cu_info->num_shader_arrays_per_engine = adev->gfx.config.max_sh_per_se;
 cu_info->num_cu_per_sh = adev->gfx.config.max_cu_per_sh;
 cu_info->simd_per_cu = acu_info.simd_per_cu;
 cu_info->max_waves_per_simd = acu_info.max_waves_per_simd;
 cu_info->wave_front_size = acu_info.wave_front_size;
 cu_info->max_scratch_slots_per_cu = acu_info.max_scratch_slots_per_cu;
 cu_info->lds_size = acu_info.lds_size;
}
