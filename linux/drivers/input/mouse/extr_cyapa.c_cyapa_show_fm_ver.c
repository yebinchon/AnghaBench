
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int state_sync_lock; int fw_min_ver; int fw_maj_ver; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ,int ) ;

__attribute__((used)) static ssize_t cyapa_show_fm_ver(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 int error;
 struct cyapa *cyapa = dev_get_drvdata(dev);

 error = mutex_lock_interruptible(&cyapa->state_sync_lock);
 if (error)
  return error;
 error = scnprintf(buf, PAGE_SIZE, "%d.%d\n", cyapa->fw_maj_ver,
    cyapa->fw_min_ver);
 mutex_unlock(&cyapa->state_sync_lock);
 return error;
}
