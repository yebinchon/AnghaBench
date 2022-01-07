
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready; } ;
struct amdgpu_ring {TYPE_1__ sched; int name; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dev; } ;


 int DRM_DEV_DEBUG (int ,char*,int ) ;
 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int amdgpu_ring_test_ring (struct amdgpu_ring*) ;

int amdgpu_ring_test_helper(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 int r;

 r = amdgpu_ring_test_ring(ring);
 if (r)
  DRM_DEV_ERROR(adev->dev, "ring %s test failed (%d)\n",
         ring->name, r);
 else
  DRM_DEV_DEBUG(adev->dev, "ring test on %s succeeded\n",
         ring->name);

 ring->sched.ready = !r;
 return r;
}
