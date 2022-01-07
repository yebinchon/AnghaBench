
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_flow {TYPE_2__* reg_id; } ;
struct mlx4_ib_dev {int dev; } ;
struct ib_flow {TYPE_1__* qp; } ;
struct TYPE_4__ {scalar_t__ mirror; scalar_t__ id; } ;
struct TYPE_3__ {int device; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int __mlx4_ib_destroy_flow (int ,scalar_t__) ;
 int kfree (struct mlx4_ib_flow*) ;
 struct mlx4_ib_dev* to_mdev (int ) ;
 struct mlx4_ib_flow* to_mflow (struct ib_flow*) ;

__attribute__((used)) static int mlx4_ib_destroy_flow(struct ib_flow *flow_id)
{
 int err, ret = 0;
 int i = 0;
 struct mlx4_ib_dev *mdev = to_mdev(flow_id->qp->device);
 struct mlx4_ib_flow *mflow = to_mflow(flow_id);

 while (i < ARRAY_SIZE(mflow->reg_id) && mflow->reg_id[i].id) {
  err = __mlx4_ib_destroy_flow(mdev->dev, mflow->reg_id[i].id);
  if (err)
   ret = err;
  if (mflow->reg_id[i].mirror) {
   err = __mlx4_ib_destroy_flow(mdev->dev,
           mflow->reg_id[i].mirror);
   if (err)
    ret = err;
  }
  i++;
 }

 kfree(mflow);
 return ret;
}
