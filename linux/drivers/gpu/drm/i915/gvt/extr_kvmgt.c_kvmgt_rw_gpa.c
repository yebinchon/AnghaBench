
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmgt_guest_info {struct kvm* kvm; } ;
struct kvm {int mm; int srcu; } ;
struct TYPE_2__ {int * mm; } ;


 int EFAULT ;
 int ESRCH ;
 TYPE_1__* current ;
 int handle_valid (unsigned long) ;
 int kvm_read_guest (struct kvm*,unsigned long,void*,unsigned long) ;
 int kvm_write_guest (struct kvm*,unsigned long,void*,unsigned long) ;
 int mmget_not_zero (int ) ;
 int mmput (int ) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int unuse_mm (int ) ;
 int use_mm (int ) ;

__attribute__((used)) static int kvmgt_rw_gpa(unsigned long handle, unsigned long gpa,
   void *buf, unsigned long len, bool write)
{
 struct kvmgt_guest_info *info;
 struct kvm *kvm;
 int idx, ret;
 bool kthread = current->mm == ((void*)0);

 if (!handle_valid(handle))
  return -ESRCH;

 info = (struct kvmgt_guest_info *)handle;
 kvm = info->kvm;

 if (kthread) {
  if (!mmget_not_zero(kvm->mm))
   return -EFAULT;
  use_mm(kvm->mm);
 }

 idx = srcu_read_lock(&kvm->srcu);
 ret = write ? kvm_write_guest(kvm, gpa, buf, len) :
        kvm_read_guest(kvm, gpa, buf, len);
 srcu_read_unlock(&kvm->srcu, idx);

 if (kthread) {
  unuse_mm(kvm->mm);
  mmput(kvm->mm);
 }

 return ret;
}
