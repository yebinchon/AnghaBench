
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_bo {int dummy; } ;


 int DRM_WARN_ONCE (char*) ;
 int ENODEV ;

__attribute__((used)) static inline int amdgpu_mn_register(struct amdgpu_bo *bo, unsigned long addr)
{
 DRM_WARN_ONCE("HMM_MIRROR kernel config option is not enabled, "
        "add CONFIG_ZONE_DEVICE=y in config file to fix this\n");
 return -ENODEV;
}
