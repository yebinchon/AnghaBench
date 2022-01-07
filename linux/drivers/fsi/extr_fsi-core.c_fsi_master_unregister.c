
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int idx; int dev; int scan_lock; } ;


 int device_unregister (int *) ;
 int fsi_master_unscan (struct fsi_master*) ;
 int ida_simple_remove (int *,int) ;
 int master_ida ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fsi_master_unregister(struct fsi_master *master)
{
 if (master->idx >= 0) {
  ida_simple_remove(&master_ida, master->idx);
  master->idx = -1;
 }

 mutex_lock(&master->scan_lock);
 fsi_master_unscan(master);
 mutex_unlock(&master->scan_lock);
 device_unregister(&master->dev);
}
