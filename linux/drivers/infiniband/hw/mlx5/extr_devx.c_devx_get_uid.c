
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct mlx5_ib_ucontext {int devx_uid; TYPE_1__ ibucontext; } ;
struct mlx5_ib_dev {int devx_whitelist_uid; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ devx_is_whitelist_cmd (void*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

__attribute__((used)) static int devx_get_uid(struct mlx5_ib_ucontext *c, void *cmd_in)
{
 if (devx_is_whitelist_cmd(cmd_in)) {
  struct mlx5_ib_dev *dev;

  if (c->devx_uid)
   return c->devx_uid;

  dev = to_mdev(c->ibucontext.device);
  if (dev->devx_whitelist_uid)
   return dev->devx_whitelist_uid;

  return -EOPNOTSUPP;
 }

 if (!c->devx_uid)
  return -EINVAL;

 return c->devx_uid;
}
