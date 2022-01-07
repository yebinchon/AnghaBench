
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uverbs_attr_bundle {int dummy; } ;
struct mlx5_read_counters_attr {scalar_t__* out; int flags; int hw_cntrs_hndl; } ;
struct mlx5_ib_mcounters {scalar_t__ cntrs_max_index; int (* read_counters ) (int ,struct mlx5_read_counters_attr*) ;int ncounters; int mcntrs_mutex; struct mlx5_ib_flow_counters_desc* counters_data; int hw_cntrs_hndl; int counters_num; } ;
struct mlx5_ib_flow_counters_desc {size_t index; size_t description; } ;
struct ib_counters_read_attr {scalar_t__ ncounters; int * counters_buff; int flags; } ;
struct ib_counters {int device; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__* kcalloc (int ,int,int ) ;
 int kfree (scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,struct mlx5_read_counters_attr*) ;
 struct mlx5_ib_mcounters* to_mcounters (struct ib_counters*) ;

__attribute__((used)) static int mlx5_ib_read_counters(struct ib_counters *counters,
     struct ib_counters_read_attr *read_attr,
     struct uverbs_attr_bundle *attrs)
{
 struct mlx5_ib_mcounters *mcounters = to_mcounters(counters);
 struct mlx5_read_counters_attr mread_attr = {};
 struct mlx5_ib_flow_counters_desc *desc;
 int ret, i;

 mutex_lock(&mcounters->mcntrs_mutex);
 if (mcounters->cntrs_max_index > read_attr->ncounters) {
  ret = -EINVAL;
  goto err_bound;
 }

 mread_attr.out = kcalloc(mcounters->counters_num, sizeof(u64),
     GFP_KERNEL);
 if (!mread_attr.out) {
  ret = -ENOMEM;
  goto err_bound;
 }

 mread_attr.hw_cntrs_hndl = mcounters->hw_cntrs_hndl;
 mread_attr.flags = read_attr->flags;
 ret = mcounters->read_counters(counters->device, &mread_attr);
 if (ret)
  goto err_read;




 desc = mcounters->counters_data;
 for (i = 0; i < mcounters->ncounters; i++)
  read_attr->counters_buff[desc[i].index] += mread_attr.out[desc[i].description];

err_read:
 kfree(mread_attr.out);
err_bound:
 mutex_unlock(&mcounters->mcntrs_mutex);
 return ret;
}
