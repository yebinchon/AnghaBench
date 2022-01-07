
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vfio_device; int mdev; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;


 int ENODEV ;
 int gvt_vgpu_err (char*) ;
 int mdev_dev (int ) ;
 int vfio_device_get_from_dev (int ) ;

__attribute__((used)) static int kvmgt_get_vfio_device(void *p_vgpu)
{
 struct intel_vgpu *vgpu = (struct intel_vgpu *)p_vgpu;

 vgpu->vdev.vfio_device = vfio_device_get_from_dev(
  mdev_dev(vgpu->vdev.mdev));
 if (!vgpu->vdev.vfio_device) {
  gvt_vgpu_err("failed to get vfio device\n");
  return -ENODEV;
 }
 return 0;
}
