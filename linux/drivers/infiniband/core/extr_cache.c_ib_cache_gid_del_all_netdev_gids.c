
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct ib_gid_table {int sz; int lock; TYPE_2__** data_vec; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct net_device* ndev; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;


 int del_gid (struct ib_device*,int ,struct ib_gid_table*,int) ;
 int dispatch_gid_change_event (struct ib_device*,int ) ;
 scalar_t__ is_gid_entry_valid (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ib_gid_table* rdma_gid_table (struct ib_device*,int ) ;

int ib_cache_gid_del_all_netdev_gids(struct ib_device *ib_dev, u8 port,
         struct net_device *ndev)
{
 struct ib_gid_table *table;
 int ix;
 bool deleted = 0;

 table = rdma_gid_table(ib_dev, port);

 mutex_lock(&table->lock);

 for (ix = 0; ix < table->sz; ix++) {
  if (is_gid_entry_valid(table->data_vec[ix]) &&
      table->data_vec[ix]->attr.ndev == ndev) {
   del_gid(ib_dev, port, table, ix);
   deleted = 1;
  }
 }

 mutex_unlock(&table->lock);

 if (deleted)
  dispatch_gid_change_event(ib_dev, port);

 return 0;
}
