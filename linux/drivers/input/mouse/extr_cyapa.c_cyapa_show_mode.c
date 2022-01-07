
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cyapa {int state_sync_lock; int gen; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int cyapa_state_to_string (struct cyapa*) ;
 struct cyapa* dev_get_drvdata (struct device*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*,int ,int ) ;

__attribute__((used)) static ssize_t cyapa_show_mode(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct cyapa *cyapa = dev_get_drvdata(dev);
 int size;
 int error;

 error = mutex_lock_interruptible(&cyapa->state_sync_lock);
 if (error)
  return error;

 size = scnprintf(buf, PAGE_SIZE, "gen%d %s\n",
   cyapa->gen, cyapa_state_to_string(cyapa));

 mutex_unlock(&cyapa->state_sync_lock);
 return size;
}
