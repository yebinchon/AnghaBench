
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvmgt_guest_info {int dummy; } ;
struct TYPE_3__ {int * kvm; int group_notifier; int mdev; int iommu_notifier; int released; } ;
struct intel_vgpu {scalar_t__ handle; TYPE_1__ vdev; } ;
struct TYPE_4__ {int (* vgpu_release ) (struct intel_vgpu*) ;} ;


 int THIS_MODULE ;
 int VFIO_GROUP_NOTIFY ;
 int VFIO_IOMMU_NOTIFY ;
 int WARN (int,char*,int) ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int handle_valid (scalar_t__) ;
 TYPE_2__* intel_gvt_ops ;
 int intel_vgpu_release_msi_eventfd_ctx (struct intel_vgpu*) ;
 int kvmgt_guest_exit (struct kvmgt_guest_info*) ;
 int mdev_dev (int ) ;
 int module_put (int ) ;
 int stub1 (struct intel_vgpu*) ;
 int vfio_unregister_notifier (int ,int ,int *) ;

__attribute__((used)) static void __intel_vgpu_release(struct intel_vgpu *vgpu)
{
 struct kvmgt_guest_info *info;
 int ret;

 if (!handle_valid(vgpu->handle))
  return;

 if (atomic_cmpxchg(&vgpu->vdev.released, 0, 1))
  return;

 intel_gvt_ops->vgpu_release(vgpu);

 ret = vfio_unregister_notifier(mdev_dev(vgpu->vdev.mdev), VFIO_IOMMU_NOTIFY,
     &vgpu->vdev.iommu_notifier);
 WARN(ret, "vfio_unregister_notifier for iommu failed: %d\n", ret);

 ret = vfio_unregister_notifier(mdev_dev(vgpu->vdev.mdev), VFIO_GROUP_NOTIFY,
     &vgpu->vdev.group_notifier);
 WARN(ret, "vfio_unregister_notifier for group failed: %d\n", ret);


 module_put(THIS_MODULE);

 info = (struct kvmgt_guest_info *)vgpu->handle;
 kvmgt_guest_exit(info);

 intel_vgpu_release_msi_eventfd_ctx(vgpu);

 vgpu->vdev.kvm = ((void*)0);
 vgpu->handle = 0;
}
