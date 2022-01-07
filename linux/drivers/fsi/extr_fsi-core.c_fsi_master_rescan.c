
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int scan_lock; } ;


 int fsi_master_scan (struct fsi_master*) ;
 int fsi_master_unscan (struct fsi_master*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fsi_master_rescan(struct fsi_master *master)
{
 int rc;

 mutex_lock(&master->scan_lock);
 fsi_master_unscan(master);
 rc = fsi_master_scan(master);
 mutex_unlock(&master->scan_lock);

 return rc;
}
