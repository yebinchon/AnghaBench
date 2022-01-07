
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_dev {TYPE_1__* flow_db; } ;
struct TYPE_2__ {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int mlx5_ib_stage_flow_db_init(struct mlx5_ib_dev *dev)
{
 dev->flow_db = kzalloc(sizeof(*dev->flow_db), GFP_KERNEL);

 if (!dev->flow_db)
  return -ENOMEM;

 mutex_init(&dev->flow_db->lock);

 return 0;
}
