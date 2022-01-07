
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_guest_info {int vgpu; int kvm; int track_node; int debugfs_cache_entries; } ;


 int debugfs_remove (int ) ;
 int gvt_cache_destroy (int ) ;
 int kvm_page_track_unregister_notifier (int ,int *) ;
 int kvm_put_kvm (int ) ;
 int kvmgt_protect_table_destroy (struct kvmgt_guest_info*) ;
 int vfree (struct kvmgt_guest_info*) ;

__attribute__((used)) static bool kvmgt_guest_exit(struct kvmgt_guest_info *info)
{
 debugfs_remove(info->debugfs_cache_entries);

 kvm_page_track_unregister_notifier(info->kvm, &info->track_node);
 kvm_put_kvm(info->kvm);
 kvmgt_protect_table_destroy(info);
 gvt_cache_destroy(info->vgpu);
 vfree(info);

 return 1;
}
