
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ib_gid_table_entry {int state; int del_work; int attr; int kref; TYPE_1__* ndev_storage; } ;
struct ib_gid_attr {int ndev; } ;
struct TYPE_2__ {struct net_device* ndev; } ;


 int GFP_KERNEL ;
 int GID_TABLE_ENTRY_INVALID ;
 int INIT_WORK (int *,int ) ;
 int dev_hold (struct net_device*) ;
 int free_gid_work ;
 int kfree (struct ib_gid_table_entry*) ;
 int kref_init (int *) ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,struct ib_gid_attr const*,int) ;
 struct net_device* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static struct ib_gid_table_entry *
alloc_gid_entry(const struct ib_gid_attr *attr)
{
 struct ib_gid_table_entry *entry;
 struct net_device *ndev;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return ((void*)0);

 ndev = rcu_dereference_protected(attr->ndev, 1);
 if (ndev) {
  entry->ndev_storage = kzalloc(sizeof(*entry->ndev_storage),
           GFP_KERNEL);
  if (!entry->ndev_storage) {
   kfree(entry);
   return ((void*)0);
  }
  dev_hold(ndev);
  entry->ndev_storage->ndev = ndev;
 }
 kref_init(&entry->kref);
 memcpy(&entry->attr, attr, sizeof(*attr));
 INIT_WORK(&entry->del_work, free_gid_work);
 entry->state = GID_TABLE_ENTRY_INVALID;
 return entry;
}
