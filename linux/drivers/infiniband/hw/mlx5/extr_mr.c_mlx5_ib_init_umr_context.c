
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int done; } ;
struct mlx5_ib_umr_context {int status; int done; TYPE_1__ cqe; } ;


 int init_completion (int *) ;
 int mlx5_ib_umr_done ;

__attribute__((used)) static inline void mlx5_ib_init_umr_context(struct mlx5_ib_umr_context *context)
{
 context->cqe.done = mlx5_ib_umr_done;
 context->status = -1;
 init_completion(&context->done);
}
