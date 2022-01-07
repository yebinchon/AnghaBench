
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_gpio {int external_mode; int master; int cmd_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fsi_master_gpio* dev_get_drvdata (struct device*) ;
 int fsi_master_gpio_init (struct fsi_master_gpio*) ;
 int fsi_master_gpio_init_external (struct fsi_master_gpio*) ;
 int fsi_master_rescan (int *) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t external_mode_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct fsi_master_gpio *master = dev_get_drvdata(dev);
 unsigned long val;
 bool external_mode;
 int err;

 err = kstrtoul(buf, 0, &val);
 if (err)
  return err;

 external_mode = !!val;

 mutex_lock(&master->cmd_lock);

 if (external_mode == master->external_mode) {
  mutex_unlock(&master->cmd_lock);
  return count;
 }

 master->external_mode = external_mode;
 if (master->external_mode)
  fsi_master_gpio_init_external(master);
 else
  fsi_master_gpio_init(master);

 mutex_unlock(&master->cmd_lock);

 fsi_master_rescan(&master->master);

 return count;
}
