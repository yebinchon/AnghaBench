
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mdev_device {int dummy; } ;
struct TYPE_5__ {int track_flush_slot; int track_write; } ;
struct kvmgt_guest_info {int debugfs_cache_entries; TYPE_2__ track_node; struct kvm* kvm; struct intel_vgpu* vgpu; } ;
struct kvm {scalar_t__ mm; } ;
struct TYPE_4__ {int nr_cache_entries; struct kvm* kvm; } ;
struct intel_vgpu {unsigned long handle; TYPE_1__ vdev; int debugfs; int vblank_done; } ;
struct TYPE_6__ {scalar_t__ mm; } ;


 int EEXIST ;
 int ENOMEM ;
 int ESRCH ;
 scalar_t__ __kvmgt_vgpu_exist (struct intel_vgpu*,struct kvm*) ;
 TYPE_3__* current ;
 int debugfs_create_ulong (char*,int,int ,int *) ;
 int gvt_cache_init (struct intel_vgpu*) ;
 int gvt_vgpu_err (char*) ;
 scalar_t__ handle_valid (unsigned long) ;
 int init_completion (int *) ;
 int kvm_get_kvm (struct kvm*) ;
 int kvm_page_track_register_notifier (struct kvm*,TYPE_2__*) ;
 int kvmgt_page_track_flush_slot ;
 int kvmgt_page_track_write ;
 int kvmgt_protect_table_init (struct kvmgt_guest_info*) ;
 struct intel_vgpu* mdev_get_drvdata (struct mdev_device*) ;
 struct kvmgt_guest_info* vzalloc (int) ;

__attribute__((used)) static int kvmgt_guest_init(struct mdev_device *mdev)
{
 struct kvmgt_guest_info *info;
 struct intel_vgpu *vgpu;
 struct kvm *kvm;

 vgpu = mdev_get_drvdata(mdev);
 if (handle_valid(vgpu->handle))
  return -EEXIST;

 kvm = vgpu->vdev.kvm;
 if (!kvm || kvm->mm != current->mm) {
  gvt_vgpu_err("KVM is required to use Intel vGPU\n");
  return -ESRCH;
 }

 if (__kvmgt_vgpu_exist(vgpu, kvm))
  return -EEXIST;

 info = vzalloc(sizeof(struct kvmgt_guest_info));
 if (!info)
  return -ENOMEM;

 vgpu->handle = (unsigned long)info;
 info->vgpu = vgpu;
 info->kvm = kvm;
 kvm_get_kvm(info->kvm);

 kvmgt_protect_table_init(info);
 gvt_cache_init(vgpu);

 init_completion(&vgpu->vblank_done);

 info->track_node.track_write = kvmgt_page_track_write;
 info->track_node.track_flush_slot = kvmgt_page_track_flush_slot;
 kvm_page_track_register_notifier(kvm, &info->track_node);

 info->debugfs_cache_entries = debugfs_create_ulong(
      "kvmgt_nr_cache_entries",
      0444, vgpu->debugfs,
      &vgpu->vdev.nr_cache_entries);
 return 0;
}
