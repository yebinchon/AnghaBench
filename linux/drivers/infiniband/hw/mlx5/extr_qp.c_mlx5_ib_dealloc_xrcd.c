
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_xrcd {int device; } ;
struct ib_udata {int dummy; } ;
struct TYPE_2__ {int xrcdn; } ;


 int kfree (struct ib_xrcd*) ;
 int mlx5_cmd_xrcd_dealloc (int ,int ,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 TYPE_1__* to_mxrcd (struct ib_xrcd*) ;

int mlx5_ib_dealloc_xrcd(struct ib_xrcd *xrcd, struct ib_udata *udata)
{
 struct mlx5_ib_dev *dev = to_mdev(xrcd->device);
 u32 xrcdn = to_mxrcd(xrcd)->xrcdn;
 int err;

 err = mlx5_cmd_xrcd_dealloc(dev->mdev, xrcdn, 0);
 if (err)
  mlx5_ib_warn(dev, "failed to dealloc xrcdn 0x%x\n", xrcdn);

 kfree(xrcd);
 return 0;
}
