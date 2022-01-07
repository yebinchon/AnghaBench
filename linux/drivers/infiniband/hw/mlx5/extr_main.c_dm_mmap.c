
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct vm_area_struct {size_t vm_end; size_t vm_start; int vm_page_prot; int vm_pgoff; } ;
struct mlx5_ib_ucontext {int dm_pages; } ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct ib_ucontext {int device; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {size_t bar_addr; } ;


 int EINVAL ;
 size_t MLX5_CAP64_DEV_MEM (TYPE_1__*,int ) ;
 size_t PAGE_SHIFT ;
 scalar_t__ find_next_zero_bit (int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_extended_index (int ) ;
 int memic_bar_start_addr ;
 int pgprot_writecombine (int ) ;
 int rdma_user_mmap_io (struct ib_ucontext*,struct vm_area_struct*,scalar_t__,size_t,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_ucontext* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static int dm_mmap(struct ib_ucontext *context, struct vm_area_struct *vma)
{
 struct mlx5_ib_ucontext *mctx = to_mucontext(context);
 struct mlx5_ib_dev *dev = to_mdev(context->device);
 u16 page_idx = get_extended_index(vma->vm_pgoff);
 size_t map_size = vma->vm_end - vma->vm_start;
 u32 npages = map_size >> PAGE_SHIFT;
 phys_addr_t pfn;

 if (find_next_zero_bit(mctx->dm_pages, page_idx + npages, page_idx) !=
     page_idx + npages)
  return -EINVAL;

 pfn = ((dev->mdev->bar_addr +
       MLX5_CAP64_DEV_MEM(dev->mdev, memic_bar_start_addr)) >>
       PAGE_SHIFT) +
       page_idx;
 return rdma_user_mmap_io(context, vma, pfn, map_size,
     pgprot_writecombine(vma->vm_page_prot));
}
