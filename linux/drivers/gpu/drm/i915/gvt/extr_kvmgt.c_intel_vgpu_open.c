
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct TYPE_6__ {int notifier_call; } ;
struct TYPE_5__ {TYPE_2__ iommu_notifier; TYPE_2__ group_notifier; int released; } ;
struct intel_vgpu {TYPE_1__ vdev; } ;
struct TYPE_7__ {int (* vgpu_activate ) (struct intel_vgpu*) ;} ;


 int THIS_MODULE ;
 int VFIO_GROUP_NOTIFY ;
 unsigned long VFIO_GROUP_NOTIFY_SET_KVM ;
 int VFIO_IOMMU_NOTIFY ;
 unsigned long VFIO_IOMMU_NOTIFY_DMA_UNMAP ;
 int atomic_set (int *,int ) ;
 int gvt_vgpu_err (char*,int) ;
 TYPE_4__* intel_gvt_ops ;
 int intel_vgpu_group_notifier ;
 int intel_vgpu_iommu_notifier ;
 int kvmgt_guest_init (struct mdev_device*) ;
 int mdev_dev (struct mdev_device*) ;
 struct intel_vgpu* mdev_get_drvdata (struct mdev_device*) ;
 int stub1 (struct intel_vgpu*) ;
 int try_module_get (int ) ;
 int vfio_register_notifier (int ,int ,unsigned long*,TYPE_2__*) ;
 int vfio_unregister_notifier (int ,int ,TYPE_2__*) ;

__attribute__((used)) static int intel_vgpu_open(struct mdev_device *mdev)
{
 struct intel_vgpu *vgpu = mdev_get_drvdata(mdev);
 unsigned long events;
 int ret;

 vgpu->vdev.iommu_notifier.notifier_call = intel_vgpu_iommu_notifier;
 vgpu->vdev.group_notifier.notifier_call = intel_vgpu_group_notifier;

 events = VFIO_IOMMU_NOTIFY_DMA_UNMAP;
 ret = vfio_register_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY, &events,
    &vgpu->vdev.iommu_notifier);
 if (ret != 0) {
  gvt_vgpu_err("vfio_register_notifier for iommu failed: %d\n",
   ret);
  goto out;
 }

 events = VFIO_GROUP_NOTIFY_SET_KVM;
 ret = vfio_register_notifier(mdev_dev(mdev), VFIO_GROUP_NOTIFY, &events,
    &vgpu->vdev.group_notifier);
 if (ret != 0) {
  gvt_vgpu_err("vfio_register_notifier for group failed: %d\n",
   ret);
  goto undo_iommu;
 }




 if (!try_module_get(THIS_MODULE))
  goto undo_group;

 ret = kvmgt_guest_init(mdev);
 if (ret)
  goto undo_group;

 intel_gvt_ops->vgpu_activate(vgpu);

 atomic_set(&vgpu->vdev.released, 0);
 return ret;

undo_group:
 vfio_unregister_notifier(mdev_dev(mdev), VFIO_GROUP_NOTIFY,
     &vgpu->vdev.group_notifier);

undo_iommu:
 vfio_unregister_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
     &vgpu->vdev.iommu_notifier);
out:
 return ret;
}
