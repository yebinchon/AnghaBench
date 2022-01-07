
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int scan_lock; int dev; int idx; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int INT_MAX ;
 int dev_attr_break ;
 int dev_attr_rescan ;
 struct device_node* dev_of_node (int *) ;
 int dev_set_name (int *,char*,int ) ;
 int device_create_file (int *,int *) ;
 int device_del (int *) ;
 int device_register (int *) ;
 int fsi_master_scan (struct fsi_master*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int ) ;
 int master_ida ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_property_read_bool (struct device_node*,char*) ;

int fsi_master_register(struct fsi_master *master)
{
 int rc;
 struct device_node *np;

 mutex_init(&master->scan_lock);
 master->idx = ida_simple_get(&master_ida, 0, INT_MAX, GFP_KERNEL);
 dev_set_name(&master->dev, "fsi%d", master->idx);

 rc = device_register(&master->dev);
 if (rc) {
  ida_simple_remove(&master_ida, master->idx);
  return rc;
 }

 rc = device_create_file(&master->dev, &dev_attr_rescan);
 if (rc) {
  device_del(&master->dev);
  ida_simple_remove(&master_ida, master->idx);
  return rc;
 }

 rc = device_create_file(&master->dev, &dev_attr_break);
 if (rc) {
  device_del(&master->dev);
  ida_simple_remove(&master_ida, master->idx);
  return rc;
 }

 np = dev_of_node(&master->dev);
 if (!of_property_read_bool(np, "no-scan-on-init")) {
  mutex_lock(&master->scan_lock);
  fsi_master_scan(master);
  mutex_unlock(&master->scan_lock);
 }

 return 0;
}
