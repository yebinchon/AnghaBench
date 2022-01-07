
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_ib_qp {int port; TYPE_2__* counter_index; } ;
struct mlx4_ib_dev {TYPE_1__* counters_table; int dev; } ;
struct TYPE_4__ {int list; int index; } ;
struct TYPE_3__ {int mutex; } ;


 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int mlx4_counter_free (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx4_ib_free_qp_counter(struct mlx4_ib_dev *dev,
        struct mlx4_ib_qp *qp)
{
 mutex_lock(&dev->counters_table[qp->port - 1].mutex);
 mlx4_counter_free(dev->dev, qp->counter_index->index);
 list_del(&qp->counter_index->list);
 mutex_unlock(&dev->counters_table[qp->port - 1].mutex);

 kfree(qp->counter_index);
 qp->counter_index = ((void*)0);
}
