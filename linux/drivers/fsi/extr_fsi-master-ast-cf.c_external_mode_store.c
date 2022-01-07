
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int external_mode; int master; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fsi_master_acf* dev_get_drvdata (struct device*) ;
 int fsi_master_acf_setup (struct fsi_master_acf*) ;
 int fsi_master_acf_setup_external (struct fsi_master_acf*) ;
 int fsi_master_acf_terminate (struct fsi_master_acf*) ;
 int fsi_master_rescan (int *) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t external_mode_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct fsi_master_acf *master = dev_get_drvdata(dev);
 unsigned long val;
 bool external_mode;
 int err;

 err = kstrtoul(buf, 0, &val);
 if (err)
  return err;

 external_mode = !!val;

 mutex_lock(&master->lock);

 if (external_mode == master->external_mode) {
  mutex_unlock(&master->lock);
  return count;
 }

 master->external_mode = external_mode;
 if (master->external_mode) {
  fsi_master_acf_terminate(master);
  fsi_master_acf_setup_external(master);
 } else
  fsi_master_acf_setup(master);

 mutex_unlock(&master->lock);

 fsi_master_rescan(&master->master);

 return count;
}
