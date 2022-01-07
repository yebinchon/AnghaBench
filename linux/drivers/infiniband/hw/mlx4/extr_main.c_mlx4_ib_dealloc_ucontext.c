
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_ucontext {int uar; } ;
struct ib_ucontext {int device; } ;
struct TYPE_2__ {int dev; } ;


 int mlx4_uar_free (int ,int *) ;
 TYPE_1__* to_mdev (int ) ;
 struct mlx4_ib_ucontext* to_mucontext (struct ib_ucontext*) ;

__attribute__((used)) static void mlx4_ib_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct mlx4_ib_ucontext *context = to_mucontext(ibcontext);

 mlx4_uar_free(to_mdev(ibcontext->device)->dev, &context->uar);
}
