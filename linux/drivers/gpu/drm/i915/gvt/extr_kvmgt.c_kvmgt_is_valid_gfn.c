
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmgt_guest_info {struct kvm* kvm; } ;
struct kvm {int srcu; } ;


 int handle_valid (unsigned long) ;
 int kvm_is_visible_gfn (struct kvm*,unsigned long) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static bool kvmgt_is_valid_gfn(unsigned long handle, unsigned long gfn)
{
 struct kvmgt_guest_info *info;
 struct kvm *kvm;
 int idx;
 bool ret;

 if (!handle_valid(handle))
  return 0;

 info = (struct kvmgt_guest_info *)handle;
 kvm = info->kvm;

 idx = srcu_read_lock(&kvm->srcu);
 ret = kvm_is_visible_gfn(kvm, gfn);
 srcu_read_unlock(&kvm->srcu, idx);

 return ret;
}
