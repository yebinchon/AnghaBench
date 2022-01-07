
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct prefetch_mr_work {int pf_flags; int num_sge; int work; struct ib_pd* pd; int sg_list; } ;
struct mlx5_ib_dev {int mr_srcu; } ;
struct ib_sge {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_uverbs_advise_mr_advice { ____Placeholder_ib_uverbs_advise_mr_advice } ib_uverbs_advise_mr_advice ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH ;
 int IB_UVERBS_ADVISE_MR_FLAG_FLUSH ;
 int INIT_WORK (int *,int ) ;
 int MLX5_PF_FLAGS_DOWNGRADE ;
 int MLX5_PF_FLAGS_PREFETCH ;
 int kvfree (struct prefetch_mr_work*) ;
 struct prefetch_mr_work* kvzalloc (int ,int ) ;
 int memcpy (int ,struct ib_sge*,int) ;
 int mlx5_ib_prefetch_mr_work ;
 int mlx5_ib_prefetch_sg_list (struct ib_pd*,int,struct ib_sge*,int) ;
 int num_pending_prefetch_inc (struct ib_pd*,struct ib_sge*,int) ;
 int queue_work (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int struct_size (struct prefetch_mr_work*,struct ib_sge*,int) ;
 int system_unbound_wq ;
 struct mlx5_ib_dev* to_mdev (int ) ;

int mlx5_ib_advise_mr_prefetch(struct ib_pd *pd,
          enum ib_uverbs_advise_mr_advice advice,
          u32 flags, struct ib_sge *sg_list, u32 num_sge)
{
 struct mlx5_ib_dev *dev = to_mdev(pd->device);
 u32 pf_flags = MLX5_PF_FLAGS_PREFETCH;
 struct prefetch_mr_work *work;
 bool valid_req;
 int srcu_key;

 if (advice == IB_UVERBS_ADVISE_MR_ADVICE_PREFETCH)
  pf_flags |= MLX5_PF_FLAGS_DOWNGRADE;

 if (flags & IB_UVERBS_ADVISE_MR_FLAG_FLUSH)
  return mlx5_ib_prefetch_sg_list(pd, pf_flags, sg_list,
      num_sge);

 work = kvzalloc(struct_size(work, sg_list, num_sge), GFP_KERNEL);
 if (!work)
  return -ENOMEM;

 memcpy(work->sg_list, sg_list, num_sge * sizeof(struct ib_sge));





 work->pd = pd;
 work->pf_flags = pf_flags;
 work->num_sge = num_sge;

 INIT_WORK(&work->work, mlx5_ib_prefetch_mr_work);

 srcu_key = srcu_read_lock(&dev->mr_srcu);

 valid_req = num_pending_prefetch_inc(pd, sg_list, num_sge);
 if (valid_req)
  queue_work(system_unbound_wq, &work->work);
 else
  kvfree(work);

 srcu_read_unlock(&dev->mr_srcu, srcu_key);

 return valid_req ? 0 : -EINVAL;
}
