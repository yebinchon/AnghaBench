
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int AMDGPU_GEM_CREATE_CPU_GTT_USWC ;
 int DRM_INFO_ONCE (char*) ;
 int drm_arch_can_wc_memory () ;

bool amdgpu_bo_support_uswc(u64 bo_flags)
{
 if (!drm_arch_can_wc_memory())
  return 0;

 return 1;

}
