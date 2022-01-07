
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vm_area_struct {scalar_t__ vm_end; unsigned long vm_start; int vm_flags; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int IB_ACCESS_LOCAL_WRITE ;
 int VM_WRITE ;
 TYPE_2__* current ;
 int down_read (int *) ;
 struct vm_area_struct* find_vma (TYPE_1__*,unsigned long) ;
 int ib_access_writable (int) ;
 struct ib_umem* ib_umem_get (struct ib_udata*,scalar_t__,scalar_t__,int,int ) ;
 unsigned long untagged_addr (scalar_t__) ;
 int up_read (int *) ;

__attribute__((used)) static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
     u64 length, int access_flags)
{






 if (!ib_access_writable(access_flags)) {
  unsigned long untagged_start = untagged_addr(start);
  struct vm_area_struct *vma;

  down_read(&current->mm->mmap_sem);





  vma = find_vma(current->mm, untagged_start);
  if (vma && vma->vm_end >= untagged_start + length &&
      vma->vm_start <= untagged_start) {
   if (vma->vm_flags & VM_WRITE)
    access_flags |= IB_ACCESS_LOCAL_WRITE;
  } else {
   access_flags |= IB_ACCESS_LOCAL_WRITE;
  }

  up_read(&current->mm->mmap_sem);
 }

 return ib_umem_get(udata, start, length, access_flags, 0);
}
