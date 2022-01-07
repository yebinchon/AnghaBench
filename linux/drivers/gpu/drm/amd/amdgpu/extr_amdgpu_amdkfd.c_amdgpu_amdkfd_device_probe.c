
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kgd_dev {int dummy; } ;
struct kfd2kgd_calls {int dummy; } ;
struct TYPE_3__ {scalar_t__ real_vram_size; } ;
struct TYPE_4__ {int dev; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gmc; TYPE_2__ kfd; int pdev; int dev; } ;
 struct kfd2kgd_calls* amdgpu_amdkfd_arcturus_get_functions () ;
 struct kfd2kgd_calls* amdgpu_amdkfd_gfx_10_0_get_functions () ;
 struct kfd2kgd_calls* amdgpu_amdkfd_gfx_7_get_functions () ;
 struct kfd2kgd_calls* amdgpu_amdkfd_gfx_8_0_get_functions () ;
 struct kfd2kgd_calls* amdgpu_amdkfd_gfx_9_0_get_functions () ;
 int amdgpu_amdkfd_total_mem_size ;
 int dev_info (int ,char*) ;
 int kgd2kfd_probe (struct kgd_dev*,int ,struct kfd2kgd_calls const*) ;

void amdgpu_amdkfd_device_probe(struct amdgpu_device *adev)
{
 const struct kfd2kgd_calls *kfd2kgd;

 switch (adev->asic_type) {






 case 143:
 case 132:
 case 142:
 case 136:
 case 135:
 case 134:
 case 128:
  kfd2kgd = amdgpu_amdkfd_gfx_8_0_get_functions();
  break;
 case 131:
 case 130:
 case 129:
 case 133:
  kfd2kgd = amdgpu_amdkfd_gfx_9_0_get_functions();
  break;
 case 144:
  kfd2kgd = amdgpu_amdkfd_arcturus_get_functions();
  break;
 case 139:
 case 137:
 case 138:
  kfd2kgd = amdgpu_amdkfd_gfx_10_0_get_functions();
  break;
 default:
  dev_info(adev->dev, "kfd not supported on this ASIC\n");
  return;
 }

 adev->kfd.dev = kgd2kfd_probe((struct kgd_dev *)adev,
          adev->pdev, kfd2kgd);

 if (adev->kfd.dev)
  amdgpu_amdkfd_total_mem_size += adev->gmc.real_vram_size;
}
