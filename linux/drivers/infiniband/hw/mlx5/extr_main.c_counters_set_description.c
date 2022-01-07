
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_mcounters {int type; int ncounters; int cntrs_max_index; int mcntrs_mutex; struct mlx5_ib_flow_counters_desc* counters_data; int counters_num; int read_counters; } ;
struct mlx5_ib_flow_counters_desc {scalar_t__ description; int index; } ;
struct ib_counters {int dummy; } ;
typedef enum mlx5_ib_counters_type { ____Placeholder_mlx5_ib_counters_type } mlx5_ib_counters_type ;


 int EINVAL ;
 int FLOW_COUNTERS_NUM ;
 scalar_t__ IB_COUNTER_BYTES ;
 int MLX5_IB_COUNTERS_FLOW ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_flow_counters ;
 struct mlx5_ib_mcounters* to_mcounters (struct ib_counters*) ;

__attribute__((used)) static int counters_set_description(struct ib_counters *counters,
        enum mlx5_ib_counters_type counters_type,
        struct mlx5_ib_flow_counters_desc *desc_data,
        u32 ncounters)
{
 struct mlx5_ib_mcounters *mcounters = to_mcounters(counters);
 u32 cntrs_max_index = 0;
 int i;

 if (counters_type != MLX5_IB_COUNTERS_FLOW)
  return -EINVAL;


 mcounters->type = counters_type;
 mcounters->read_counters = read_flow_counters;
 mcounters->counters_num = FLOW_COUNTERS_NUM;
 mcounters->ncounters = ncounters;

 for (i = 0; i < ncounters; i++) {
  if (desc_data[i].description > IB_COUNTER_BYTES)
   return -EINVAL;

  if (cntrs_max_index <= desc_data[i].index)
   cntrs_max_index = desc_data[i].index + 1;
 }

 mutex_lock(&mcounters->mcntrs_mutex);
 mcounters->counters_data = desc_data;
 mcounters->cntrs_max_index = cntrs_max_index;
 mutex_unlock(&mcounters->mcntrs_mutex);

 return 0;
}
