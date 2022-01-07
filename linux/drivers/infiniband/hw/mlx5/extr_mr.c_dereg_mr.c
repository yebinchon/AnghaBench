
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_ib_mr {int npages; int allocated_from_cache; int num_pending_prefetch; int live; struct ib_umem* umem; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; int mr_srcu; } ;
struct ib_umem_odp {int is_implicit_odp; } ;
struct ib_umem {int dummy; } ;
struct TYPE_3__ {int reg_pages; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;


 int WARN_ON (scalar_t__) ;
 int WRITE_ONCE (int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int clean_mr (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int flush_workqueue (int ) ;
 int ib_umem_end (struct ib_umem_odp*) ;
 int ib_umem_odp_release (struct ib_umem_odp*) ;
 int ib_umem_release (struct ib_umem*) ;
 int ib_umem_start (struct ib_umem_odp*) ;
 scalar_t__ is_odp_mr (struct mlx5_ib_mr*) ;
 int kfree (struct mlx5_ib_mr*) ;
 int mlx5_ib_free_implicit_mr (struct mlx5_ib_mr*) ;
 int mlx5_ib_invalidate_range (struct ib_umem_odp*,int ,int ) ;
 int mlx5_mr_cache_free (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ;
 int synchronize_srcu (int *) ;
 int system_unbound_wq ;
 struct ib_umem_odp* to_ib_umem_odp (struct ib_umem*) ;

__attribute__((used)) static void dereg_mr(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
 int npages = mr->npages;
 struct ib_umem *umem = mr->umem;

 if (is_odp_mr(mr)) {
  struct ib_umem_odp *umem_odp = to_ib_umem_odp(umem);




  WRITE_ONCE(mr->live, 0);


  synchronize_srcu(&dev->mr_srcu);


  if (atomic_read(&mr->num_pending_prefetch))
   flush_workqueue(system_unbound_wq);
  WARN_ON(atomic_read(&mr->num_pending_prefetch));


  if (!umem_odp->is_implicit_odp)
   mlx5_ib_invalidate_range(umem_odp,
       ib_umem_start(umem_odp),
       ib_umem_end(umem_odp));
  else
   mlx5_ib_free_implicit_mr(mr);





  ib_umem_odp_release(umem_odp);
  atomic_sub(npages, &dev->mdev->priv.reg_pages);


  umem = ((void*)0);
 }

 clean_mr(dev, mr);





 mlx5_mr_cache_free(dev, mr);
 ib_umem_release(umem);
 if (umem)
  atomic_sub(npages, &dev->mdev->priv.reg_pages);

 if (!mr->allocated_from_cache)
  kfree(mr);
}
