
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_wqn_range {int dirty; int list; int size; int base_wqn; int refcount; } ;
struct TYPE_2__ {int device; } ;
struct mlx4_ib_ucontext {int wqn_ranges_mutex; TYPE_1__ ibucontext; } ;
struct mlx4_ib_qp {struct mlx4_wqn_range* wqn_range; } ;
struct mlx4_ib_dev {int dev; } ;


 int kfree (struct mlx4_wqn_range*) ;
 int list_del (int *) ;
 int mlx4_qp_release_range (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_ib_dev* to_mdev (int ) ;

__attribute__((used)) static void mlx4_ib_release_wqn(struct mlx4_ib_ucontext *context,
    struct mlx4_ib_qp *qp, bool dirty_release)
{
 struct mlx4_ib_dev *dev = to_mdev(context->ibucontext.device);
 struct mlx4_wqn_range *range;

 mutex_lock(&context->wqn_ranges_mutex);

 range = qp->wqn_range;

 range->refcount--;
 if (!range->refcount) {
  mlx4_qp_release_range(dev->dev, range->base_wqn,
          range->size);
  list_del(&range->list);
  kfree(range);
 } else if (dirty_release) {





  range->dirty = 1;
 }

 mutex_unlock(&context->wqn_ranges_mutex);
}
