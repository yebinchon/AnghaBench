
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (int ,int ) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int lock_srbm (struct kgd_dev*,int ,int ,int ,int ) ;
 int mmSH_MEM_BASES ;
 int mmSH_MEM_CONFIG ;
 int unlock_srbm (struct kgd_dev*) ;

__attribute__((used)) static void kgd_program_sh_mem_settings(struct kgd_dev *kgd, uint32_t vmid,
     uint32_t sh_mem_config,
     uint32_t sh_mem_ape1_base,
     uint32_t sh_mem_ape1_limit,
     uint32_t sh_mem_bases)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);

 lock_srbm(kgd, 0, 0, 0, vmid);

 WREG32(SOC15_REG_OFFSET(GC, 0, mmSH_MEM_CONFIG), sh_mem_config);
 WREG32(SOC15_REG_OFFSET(GC, 0, mmSH_MEM_BASES), sh_mem_bases);


 unlock_srbm(kgd);
}
