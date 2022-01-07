
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_resources {TYPE_1__* ports; int p0; int c0; int x1; int x0; int s0; int s1; } ;
struct TYPE_2__ {int pkey_change_work; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cancel_work_sync (int *) ;
 int kfree (int ) ;
 int mlx5_ib_dealloc_pd (int ,int *) ;
 int mlx5_ib_dealloc_xrcd (int ,int *) ;
 int mlx5_ib_destroy_cq (int ,int *) ;
 int mlx5_ib_destroy_srq (int ,int *) ;

__attribute__((used)) static void destroy_dev_resources(struct mlx5_ib_resources *devr)
{
 int port;

 mlx5_ib_destroy_srq(devr->s1, ((void*)0));
 kfree(devr->s1);
 mlx5_ib_destroy_srq(devr->s0, ((void*)0));
 kfree(devr->s0);
 mlx5_ib_dealloc_xrcd(devr->x0, ((void*)0));
 mlx5_ib_dealloc_xrcd(devr->x1, ((void*)0));
 mlx5_ib_destroy_cq(devr->c0, ((void*)0));
 kfree(devr->c0);
 mlx5_ib_dealloc_pd(devr->p0, ((void*)0));
 kfree(devr->p0);


 for (port = 0; port < ARRAY_SIZE(devr->ports); ++port)
  cancel_work_sync(&devr->ports[port].pkey_change_work);
}
