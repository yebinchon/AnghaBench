
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psp_context {int dummy; } ;
struct amdgpu_device {struct psp_context psp; } ;


 int DRM_ERROR (char*) ;
 int psp_init_microcode (struct psp_context*) ;

__attribute__((used)) static int psp_sw_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct psp_context *psp = &adev->psp;
 int ret;

 ret = psp_init_microcode(psp);
 if (ret) {
  DRM_ERROR("Failed to load psp firmware!\n");
  return ret;
 }

 return 0;
}
