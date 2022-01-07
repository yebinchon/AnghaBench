
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cons_index; } ;
struct mlx4_ib_cq {TYPE_1__ mcq; } ;


 scalar_t__ get_sw_cqe (struct mlx4_ib_cq*,int) ;

__attribute__((used)) static int mlx4_ib_get_outstanding_cqes(struct mlx4_ib_cq *cq)
{
 u32 i;

 i = cq->mcq.cons_index;
 while (get_sw_cqe(cq, i))
  ++i;

 return i - cq->mcq.cons_index;
}
