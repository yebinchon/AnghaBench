
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master_acf {int lock; int gpio_enable; int external_mode; } ;
struct fsi_master {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int gpiod_set_value (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsi_master_acf* to_fsi_master_acf (struct fsi_master*) ;

__attribute__((used)) static int fsi_master_acf_link_enable(struct fsi_master *_master, int link)
{
 struct fsi_master_acf *master = to_fsi_master_acf(_master);
 int rc = -EBUSY;

 if (link != 0)
  return -ENODEV;

 mutex_lock(&master->lock);
 if (!master->external_mode) {
  gpiod_set_value(master->gpio_enable, 1);
  rc = 0;
 }
 mutex_unlock(&master->lock);

 return rc;
}
