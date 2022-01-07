
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgs_device {int dummy; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {int * ops; } ;
struct amdgpu_cgs_device {struct amdgpu_device* adev; TYPE_1__ base; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int amdgpu_cgs_ops ;
 struct amdgpu_cgs_device* kmalloc (int,int ) ;

struct cgs_device *amdgpu_cgs_create_device(struct amdgpu_device *adev)
{
 struct amdgpu_cgs_device *cgs_device =
  kmalloc(sizeof(*cgs_device), GFP_KERNEL);

 if (!cgs_device) {
  DRM_ERROR("Couldn't allocate CGS device structure\n");
  return ((void*)0);
 }

 cgs_device->base.ops = &amdgpu_cgs_ops;
 cgs_device->adev = adev;

 return (struct cgs_device *)cgs_device;
}
