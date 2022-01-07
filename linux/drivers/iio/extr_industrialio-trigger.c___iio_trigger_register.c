
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct iio_trigger {scalar_t__ id; int dev; int list; int name; struct module* owner; } ;


 int EEXIST ;
 int GFP_KERNEL ;
 scalar_t__ __iio_trigger_find_by_name (int ) ;
 int dev_set_name (int *,char*,unsigned long) ;
 int device_add (int *) ;
 int device_del (int *) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int iio_trigger_ida ;
 int iio_trigger_list ;
 int iio_trigger_list_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;

int __iio_trigger_register(struct iio_trigger *trig_info,
      struct module *this_mod)
{
 int ret;

 trig_info->owner = this_mod;

 trig_info->id = ida_simple_get(&iio_trigger_ida, 0, 0, GFP_KERNEL);
 if (trig_info->id < 0)
  return trig_info->id;


 dev_set_name(&trig_info->dev, "trigger%ld",
       (unsigned long) trig_info->id);

 ret = device_add(&trig_info->dev);
 if (ret)
  goto error_unregister_id;


 mutex_lock(&iio_trigger_list_lock);
 if (__iio_trigger_find_by_name(trig_info->name)) {
  pr_err("Duplicate trigger name '%s'\n", trig_info->name);
  ret = -EEXIST;
  goto error_device_del;
 }
 list_add_tail(&trig_info->list, &iio_trigger_list);
 mutex_unlock(&iio_trigger_list_lock);

 return 0;

error_device_del:
 mutex_unlock(&iio_trigger_list_lock);
 device_del(&trig_info->dev);
error_unregister_id:
 ida_simple_remove(&iio_trigger_ida, trig_info->id);
 return ret;
}
