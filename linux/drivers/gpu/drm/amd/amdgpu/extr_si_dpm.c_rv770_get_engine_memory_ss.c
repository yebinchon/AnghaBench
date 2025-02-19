
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int dynamic_ss; void* mclk_ss; void* sclk_ss; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_atom_ss {int dummy; } ;


 int ASIC_INTERNAL_ENGINE_SS ;
 int ASIC_INTERNAL_MEMORY_SS ;
 void* amdgpu_atombios_get_asic_ss_info (struct amdgpu_device*,struct amdgpu_atom_ss*,int ,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void rv770_get_engine_memory_ss(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);
 struct amdgpu_atom_ss ss;

 pi->sclk_ss = amdgpu_atombios_get_asic_ss_info(adev, &ss,
             ASIC_INTERNAL_ENGINE_SS, 0);
 pi->mclk_ss = amdgpu_atombios_get_asic_ss_info(adev, &ss,
             ASIC_INTERNAL_MEMORY_SS, 0);

 if (pi->sclk_ss || pi->mclk_ss)
  pi->dynamic_ss = 1;
 else
  pi->dynamic_ss = 0;
}
