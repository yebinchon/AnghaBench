
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_xrcd {int device; } ;
struct ib_udata {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int xrcdn; int pd; int cq; } ;


 int ib_dealloc_pd (int ) ;
 int ib_destroy_cq (int ) ;
 int kfree (struct ib_xrcd*) ;
 int mlx4_xrcd_free (int ,int ) ;
 TYPE_2__* to_mdev (int ) ;
 TYPE_1__* to_mxrcd (struct ib_xrcd*) ;

__attribute__((used)) static int mlx4_ib_dealloc_xrcd(struct ib_xrcd *xrcd, struct ib_udata *udata)
{
 ib_destroy_cq(to_mxrcd(xrcd)->cq);
 ib_dealloc_pd(to_mxrcd(xrcd)->pd);
 mlx4_xrcd_free(to_mdev(xrcd->device)->dev, to_mxrcd(xrcd)->xrcdn);
 kfree(xrcd);

 return 0;
}
