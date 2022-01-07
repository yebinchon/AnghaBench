
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_reconfig_data {int prop; TYPE_2__* dn; } ;
struct nx842_devdata {TYPE_1__* dev; } ;
struct notifier_block {int dummy; } ;
struct device_node {int name; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int NOTIFY_OK ;
 unsigned long OF_RECONFIG_UPDATE_PROPERTY ;
 int devdata ;
 int nx842_OF_upd (int ) ;
 struct nx842_devdata* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int nx842_OF_notifier(struct notifier_block *np, unsigned long action,
        void *data)
{
 struct of_reconfig_data *upd = data;
 struct nx842_devdata *local_devdata;
 struct device_node *node = ((void*)0);

 rcu_read_lock();
 local_devdata = rcu_dereference(devdata);
 if (local_devdata)
  node = local_devdata->dev->of_node;

 if (local_devdata &&
   action == OF_RECONFIG_UPDATE_PROPERTY &&
   !strcmp(upd->dn->name, node->name)) {
  rcu_read_unlock();
  nx842_OF_upd(upd->prop);
 } else
  rcu_read_unlock();

 return NOTIFY_OK;
}
