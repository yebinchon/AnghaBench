
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int autoload_supported; struct amdgpu_device* adev; } ;
struct amdgpu_device {int asic_type; struct psp_context psp; } ;
 int EINVAL ;
 int psp_set_funcs (struct amdgpu_device*) ;
 int psp_v10_0_set_psp_funcs (struct psp_context*) ;
 int psp_v11_0_set_psp_funcs (struct psp_context*) ;
 int psp_v12_0_set_psp_funcs (struct psp_context*) ;
 int psp_v3_1_set_psp_funcs (struct psp_context*) ;

__attribute__((used)) static int psp_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct psp_context *psp = &adev->psp;

 psp_set_funcs(adev);

 switch (adev->asic_type) {
 case 130:
 case 129:
  psp_v3_1_set_psp_funcs(psp);
  psp->autoload_supported = 0;
  break;
 case 132:
  psp_v10_0_set_psp_funcs(psp);
  psp->autoload_supported = 0;
  break;
 case 128:
 case 136:
  psp_v11_0_set_psp_funcs(psp);
  psp->autoload_supported = 0;
  break;
 case 135:
 case 133:
 case 134:
  psp_v11_0_set_psp_funcs(psp);
  psp->autoload_supported = 1;
  break;
 case 131:
  psp_v12_0_set_psp_funcs(psp);
  break;
 default:
  return -EINVAL;
 }

 psp->adev = adev;

 return 0;
}
