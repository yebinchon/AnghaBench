
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_mcounters {scalar_t__ hw_cntrs_hndl; } ;
struct ib_counters {int device; } ;
struct TYPE_2__ {int mdev; } ;


 int counters_clear_description (struct ib_counters*) ;
 int kfree (struct mlx5_ib_mcounters*) ;
 int mlx5_fc_destroy (int ,scalar_t__) ;
 struct mlx5_ib_mcounters* to_mcounters (struct ib_counters*) ;
 TYPE_1__* to_mdev (int ) ;

__attribute__((used)) static int mlx5_ib_destroy_counters(struct ib_counters *counters)
{
 struct mlx5_ib_mcounters *mcounters = to_mcounters(counters);

 counters_clear_description(counters);
 if (mcounters->hw_cntrs_hndl)
  mlx5_fc_destroy(to_mdev(counters->device)->mdev,
    mcounters->hw_cntrs_hndl);

 kfree(mcounters);

 return 0;
}
