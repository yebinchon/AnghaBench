
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_gid_table {int sz; int lock; int * data_vec; } ;
struct ib_device {int dummy; } ;


 int del_gid (struct ib_device*,int ,struct ib_gid_table*,int) ;
 int dispatch_gid_change_event (struct ib_device*,int ) ;
 scalar_t__ is_gid_entry_valid (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cleanup_gid_table_port(struct ib_device *ib_dev, u8 port,
       struct ib_gid_table *table)
{
 int i;
 bool deleted = 0;

 if (!table)
  return;

 mutex_lock(&table->lock);
 for (i = 0; i < table->sz; ++i) {
  if (is_gid_entry_valid(table->data_vec[i])) {
   del_gid(ib_dev, port, table, i);
   deleted = 1;
  }
 }
 mutex_unlock(&table->lock);

 if (deleted)
  dispatch_gid_change_event(ib_dev, port);
}
