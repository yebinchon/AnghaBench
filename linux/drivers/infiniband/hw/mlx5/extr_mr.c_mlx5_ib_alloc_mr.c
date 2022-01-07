
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;
typedef enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;


 struct ib_mr* __mlx5_ib_alloc_mr (struct ib_pd*,int,int ,int ) ;

struct ib_mr *mlx5_ib_alloc_mr(struct ib_pd *pd, enum ib_mr_type mr_type,
          u32 max_num_sg, struct ib_udata *udata)
{
 return __mlx5_ib_alloc_mr(pd, mr_type, max_num_sg, 0);
}
