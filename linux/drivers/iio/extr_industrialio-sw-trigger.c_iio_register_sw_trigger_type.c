
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_sw_trigger_type {int group; int name; int list; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct iio_sw_trigger_type* __iio_find_sw_trigger_type (int ,int ) ;
 int configfs_register_default_group (int ,int ,int *) ;
 int iio_trigger_type_group_type ;
 int iio_trigger_types_list ;
 int iio_trigger_types_lock ;
 int iio_triggers_group ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (int ) ;

int iio_register_sw_trigger_type(struct iio_sw_trigger_type *t)
{
 struct iio_sw_trigger_type *iter;
 int ret = 0;

 mutex_lock(&iio_trigger_types_lock);
 iter = __iio_find_sw_trigger_type(t->name, strlen(t->name));
 if (iter)
  ret = -EBUSY;
 else
  list_add_tail(&t->list, &iio_trigger_types_list);
 mutex_unlock(&iio_trigger_types_lock);

 if (ret)
  return ret;

 t->group = configfs_register_default_group(iio_triggers_group, t->name,
      &iio_trigger_type_group_type);
 if (IS_ERR(t->group))
  ret = PTR_ERR(t->group);

 return ret;
}
