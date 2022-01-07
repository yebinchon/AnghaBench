
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_page_prot; int vm_pgoff; } ;
struct mlx5_bfreg_info {int num_sys_pages; int num_static_sys_pages; size_t total_num_bfregs; size_t* sys_pages; int lock; scalar_t__* count; int lib_uar_4k; } ;
struct mlx5_ib_ucontext {int ibucontext; struct mlx5_bfreg_info bfregi; } ;
struct mlx5_ib_dev {int mdev; } ;
typedef int phys_addr_t ;
typedef int pgprot_t ;
typedef enum mlx5_ib_mmap_cmd { ____Placeholder_mlx5_ib_mmap_cmd } mlx5_ib_mmap_cmd ;


 int EINVAL ;
 int EPERM ;




 int MLX5_NON_FP_BFREGS_PER_UAR ;
 scalar_t__ PAGE_SIZE ;
 unsigned long get_extended_index (int ) ;
 unsigned long get_index (int ) ;
 int get_uars_per_sys_page (struct mlx5_ib_dev*,int ) ;
 int mlx5_cmd_alloc_uar (int ,size_t*) ;
 int mlx5_cmd_free_uar (int ,unsigned long) ;
 int mlx5_ib_dbg (struct mlx5_ib_dev*,char*,unsigned long,int *) ;
 int mlx5_ib_err (struct mlx5_ib_dev*,char*,int,int ) ;
 int mlx5_ib_free_bfreg (struct mlx5_ib_dev*,struct mlx5_bfreg_info*,size_t) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,...) ;
 int mmap_cmd2str (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pat_enabled () ;
 int pgprot_noncached (int ) ;
 int pgprot_writecombine (int ) ;
 int rdma_user_mmap_io (int *,struct vm_area_struct*,int ,scalar_t__,int ) ;
 int uar_index2pfn (struct mlx5_ib_dev*,size_t) ;

__attribute__((used)) static int uar_mmap(struct mlx5_ib_dev *dev, enum mlx5_ib_mmap_cmd cmd,
      struct vm_area_struct *vma,
      struct mlx5_ib_ucontext *context)
{
 struct mlx5_bfreg_info *bfregi = &context->bfregi;
 int err;
 unsigned long idx;
 phys_addr_t pfn;
 pgprot_t prot;
 u32 bfreg_dyn_idx = 0;
 u32 uar_index;
 int dyn_uar = (cmd == 131);
 int max_valid_idx = dyn_uar ? bfregi->num_sys_pages :
    bfregi->num_static_sys_pages;

 if (vma->vm_end - vma->vm_start != PAGE_SIZE)
  return -EINVAL;

 if (dyn_uar)
  idx = get_extended_index(vma->vm_pgoff) + bfregi->num_static_sys_pages;
 else
  idx = get_index(vma->vm_pgoff);

 if (idx >= max_valid_idx) {
  mlx5_ib_warn(dev, "invalid uar index %lu, max=%d\n",
        idx, max_valid_idx);
  return -EINVAL;
 }

 switch (cmd) {
 case 128:
 case 131:





   return -EPERM;


 case 129:

  prot = pgprot_writecombine(vma->vm_page_prot);
  break;
 case 130:
  prot = pgprot_noncached(vma->vm_page_prot);
  break;
 default:
  return -EINVAL;
 }

 if (dyn_uar) {
  int uars_per_page;

  uars_per_page = get_uars_per_sys_page(dev, bfregi->lib_uar_4k);
  bfreg_dyn_idx = idx * (uars_per_page * MLX5_NON_FP_BFREGS_PER_UAR);
  if (bfreg_dyn_idx >= bfregi->total_num_bfregs) {
   mlx5_ib_warn(dev, "invalid bfreg_dyn_idx %u, max=%u\n",
         bfreg_dyn_idx, bfregi->total_num_bfregs);
   return -EINVAL;
  }

  mutex_lock(&bfregi->lock);



  if (bfregi->count[bfreg_dyn_idx]) {
   mlx5_ib_warn(dev, "wrong offset, idx %lu is busy, bfregn=%u\n", idx, bfreg_dyn_idx);
   mutex_unlock(&bfregi->lock);
   return -EINVAL;
  }

  bfregi->count[bfreg_dyn_idx]++;
  mutex_unlock(&bfregi->lock);

  err = mlx5_cmd_alloc_uar(dev->mdev, &uar_index);
  if (err) {
   mlx5_ib_warn(dev, "UAR alloc failed\n");
   goto free_bfreg;
  }
 } else {
  uar_index = bfregi->sys_pages[idx];
 }

 pfn = uar_index2pfn(dev, uar_index);
 mlx5_ib_dbg(dev, "uar idx 0x%lx, pfn %pa\n", idx, &pfn);

 err = rdma_user_mmap_io(&context->ibucontext, vma, pfn, PAGE_SIZE,
    prot);
 if (err) {
  mlx5_ib_err(dev,
       "rdma_user_mmap_io failed with error=%d, mmap_cmd=%s\n",
       err, mmap_cmd2str(cmd));
  goto err;
 }

 if (dyn_uar)
  bfregi->sys_pages[idx] = uar_index;
 return 0;

err:
 if (!dyn_uar)
  return err;

 mlx5_cmd_free_uar(dev->mdev, idx);

free_bfreg:
 mlx5_ib_free_bfreg(dev, bfregi, bfreg_dyn_idx);

 return err;
}
