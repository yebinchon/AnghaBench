
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int state_sync_lock; int product_id; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t cyapa_show_product_id(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 int size;
 int error;

 error = mutex_lock_interruptible(&cyapa->state_sync_lock);
 if (error)
  return error;
 size = scnprintf(buf, PAGE_SIZE, "%s\n", cyapa->product_id);
 mutex_unlock(&cyapa->state_sync_lock);
 return size;
}
