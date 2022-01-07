
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_sge {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef enum ib_uverbs_advise_mr_advice { ____Placeholder_ib_uverbs_advise_mr_advice } ib_uverbs_advise_mr_advice ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
mlx5_ib_advise_mr_prefetch(struct ib_pd *pd,
      enum ib_uverbs_advise_mr_advice advice, u32 flags,
      struct ib_sge *sg_list, u32 num_sge)
{
 return -EOPNOTSUPP;
}
