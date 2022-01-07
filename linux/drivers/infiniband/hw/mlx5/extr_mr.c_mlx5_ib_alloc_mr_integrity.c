
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;


 int IB_MR_TYPE_INTEGRITY ;
 struct ib_mr* __mlx5_ib_alloc_mr (struct ib_pd*,int ,int ,int ) ;

struct ib_mr *mlx5_ib_alloc_mr_integrity(struct ib_pd *pd,
      u32 max_num_sg, u32 max_num_meta_sg)
{
 return __mlx5_ib_alloc_mr(pd, IB_MR_TYPE_INTEGRITY, max_num_sg,
      max_num_meta_sg);
}
