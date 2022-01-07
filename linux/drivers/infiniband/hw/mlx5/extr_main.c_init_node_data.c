
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int node_guid; int node_desc; } ;
struct mlx5_ib_dev {TYPE_3__ ib_dev; TYPE_2__* mdev; } ;
struct TYPE_5__ {TYPE_1__* pdev; int rev_id; } ;
struct TYPE_4__ {int revision; } ;


 int mlx5_query_node_desc (struct mlx5_ib_dev*,int ) ;
 int mlx5_query_node_guid (struct mlx5_ib_dev*,int *) ;

__attribute__((used)) static int init_node_data(struct mlx5_ib_dev *dev)
{
 int err;

 err = mlx5_query_node_desc(dev, dev->ib_dev.node_desc);
 if (err)
  return err;

 dev->mdev->rev_id = dev->mdev->pdev->revision;

 return mlx5_query_node_guid(dev, &dev->ib_dev.node_guid);
}
