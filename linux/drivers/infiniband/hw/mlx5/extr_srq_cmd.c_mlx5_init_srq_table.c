
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct mlx5_srq_table {TYPE_1__ nb; int array; } ;
struct mlx5_ib_dev {int mdev; struct mlx5_srq_table srq_table; } ;


 int XA_FLAGS_LOCK_IRQ ;
 int memset (struct mlx5_srq_table*,int ,int) ;
 int mlx5_notifier_register (int ,TYPE_1__*) ;
 int srq_event_notifier ;
 int xa_init_flags (int *,int ) ;

int mlx5_init_srq_table(struct mlx5_ib_dev *dev)
{
 struct mlx5_srq_table *table = &dev->srq_table;

 memset(table, 0, sizeof(*table));
 xa_init_flags(&table->array, XA_FLAGS_LOCK_IRQ);

 table->nb.notifier_call = srq_event_notifier;
 mlx5_notifier_register(dev->mdev, &table->nb);

 return 0;
}
