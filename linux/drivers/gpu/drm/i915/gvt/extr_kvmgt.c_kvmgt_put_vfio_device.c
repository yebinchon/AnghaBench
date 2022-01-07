
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vfio_device; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 scalar_t__ WARN_ON (int) ;
 int vfio_device_put (int ) ;

__attribute__((used)) static void kvmgt_put_vfio_device(void *vgpu)
{
 if (WARN_ON(!((struct intel_vgpu *)vgpu)->vdev.vfio_device))
  return;

 vfio_device_put(((struct intel_vgpu *)vgpu)->vdev.vfio_device);
}
