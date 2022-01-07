
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct i2c_adapter {TYPE_1__ dev; } ;
struct scx200_acb_iface {struct scx200_acb_iface* next; struct i2c_adapter adapter; } ;


 int ENODEV ;
 scalar_t__ i2c_add_adapter (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 struct scx200_acb_iface* scx200_acb_list ;
 int scx200_acb_list_mutex ;
 int scx200_acb_probe (struct scx200_acb_iface*) ;
 int scx200_acb_reset (struct scx200_acb_iface*) ;

__attribute__((used)) static int scx200_acb_create(struct scx200_acb_iface *iface)
{
 struct i2c_adapter *adapter;
 int rc;

 adapter = &iface->adapter;

 rc = scx200_acb_probe(iface);
 if (rc) {
  pr_warn("probe failed\n");
  return rc;
 }

 scx200_acb_reset(iface);

 if (i2c_add_adapter(adapter) < 0) {
  pr_err("failed to register\n");
  return -ENODEV;
 }

 if (!adapter->dev.parent) {

  mutex_lock(&scx200_acb_list_mutex);
  iface->next = scx200_acb_list;
  scx200_acb_list = iface;
  mutex_unlock(&scx200_acb_list_mutex);
 }

 return 0;
}
