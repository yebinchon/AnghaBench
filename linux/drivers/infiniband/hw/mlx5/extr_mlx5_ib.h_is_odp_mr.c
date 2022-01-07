
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_mr {TYPE_1__* umem; } ;
struct TYPE_2__ {scalar_t__ is_odp; } ;


 int CONFIG_INFINIBAND_ON_DEMAND_PAGING ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static inline bool is_odp_mr(struct mlx5_ib_mr *mr)
{
 return IS_ENABLED(CONFIG_INFINIBAND_ON_DEMAND_PAGING) && mr->umem &&
        mr->umem->is_odp;
}
