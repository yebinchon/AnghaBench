
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_mcounters {int mcntrs_mutex; scalar_t__ cntrs_max_index; int * counters_data; } ;
struct ib_counters {int dummy; } ;


 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx5_ib_mcounters* to_mcounters (struct ib_counters*) ;

__attribute__((used)) static void counters_clear_description(struct ib_counters *counters)
{
 struct mlx5_ib_mcounters *mcounters = to_mcounters(counters);

 mutex_lock(&mcounters->mcntrs_mutex);
 kfree(mcounters->counters_data);
 mcounters->counters_data = ((void*)0);
 mcounters->cntrs_max_index = 0;
 mutex_unlock(&mcounters->mcntrs_mutex);
}
