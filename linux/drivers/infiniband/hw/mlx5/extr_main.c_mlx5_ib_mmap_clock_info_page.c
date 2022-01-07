
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int vm_pgoff; } ;
struct mlx5_ib_ucontext {int dummy; } ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct TYPE_2__ {int clock_info; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ MLX5_IB_CLOCK_INFO_V1 ;
 scalar_t__ PAGE_SIZE ;
 int VM_EXEC ;
 int VM_MAYWRITE ;
 int VM_SHARED ;
 int VM_WRITE ;
 scalar_t__ get_index (int ) ;
 int virt_to_page (int ) ;
 int vm_insert_page (struct vm_area_struct*,scalar_t__,int ) ;

__attribute__((used)) static int mlx5_ib_mmap_clock_info_page(struct mlx5_ib_dev *dev,
     struct vm_area_struct *vma,
     struct mlx5_ib_ucontext *context)
{
 if ((vma->vm_end - vma->vm_start != PAGE_SIZE) ||
     !(vma->vm_flags & VM_SHARED))
  return -EINVAL;

 if (get_index(vma->vm_pgoff) != MLX5_IB_CLOCK_INFO_V1)
  return -EOPNOTSUPP;

 if (vma->vm_flags & (VM_WRITE | VM_EXEC))
  return -EPERM;
 vma->vm_flags &= ~VM_MAYWRITE;

 if (!dev->mdev->clock_info)
  return -EOPNOTSUPP;

 return vm_insert_page(vma, vma->vm_start,
         virt_to_page(dev->mdev->clock_info));
}
