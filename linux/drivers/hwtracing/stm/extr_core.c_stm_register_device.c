
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int kobj; int release; struct device* parent; int * class; int devt; } ;
struct stm_device {scalar_t__ major; unsigned int sw_nmasters; TYPE_1__ dev; struct stm_data* data; struct module* owner; int policy_mutex; int mc_lock; int link_list; int link_lock; int link_mutex; } ;
struct stm_data {int sw_end; int sw_start; int name; struct stm_device* stm; int sw_nchannels; int packet; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int INIT_LIST_HEAD (int *) ;
 int MKDEV (scalar_t__,int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int kobject_set_name (int *,char*,int ) ;
 int mutex_init (int *) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int pm_runtime_no_callbacks (TYPE_1__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_1__*,int) ;
 int pm_runtime_set_suspended (TYPE_1__*) ;
 int pm_runtime_use_autosuspend (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;
 scalar_t__ register_chrdev (int ,int ,int *) ;
 int spin_lock_init (int *) ;
 int stm_class ;
 int stm_core_up ;
 int stm_device_release ;
 int stm_fops ;
 int unregister_chrdev (scalar_t__,int ) ;
 int vfree (struct stm_device*) ;
 struct stm_device* vzalloc (int) ;

int stm_register_device(struct device *parent, struct stm_data *stm_data,
   struct module *owner)
{
 struct stm_device *stm;
 unsigned int nmasters;
 int err = -ENOMEM;

 if (!stm_core_up)
  return -EPROBE_DEFER;

 if (!stm_data->packet || !stm_data->sw_nchannels)
  return -EINVAL;

 nmasters = stm_data->sw_end - stm_data->sw_start + 1;
 stm = vzalloc(sizeof(*stm) + nmasters * sizeof(void *));
 if (!stm)
  return -ENOMEM;

 stm->major = register_chrdev(0, stm_data->name, &stm_fops);
 if (stm->major < 0)
  goto err_free;

 device_initialize(&stm->dev);
 stm->dev.devt = MKDEV(stm->major, 0);
 stm->dev.class = &stm_class;
 stm->dev.parent = parent;
 stm->dev.release = stm_device_release;

 mutex_init(&stm->link_mutex);
 spin_lock_init(&stm->link_lock);
 INIT_LIST_HEAD(&stm->link_list);


 spin_lock_init(&stm->mc_lock);
 mutex_init(&stm->policy_mutex);
 stm->sw_nmasters = nmasters;
 stm->owner = owner;
 stm->data = stm_data;
 stm_data->stm = stm;

 err = kobject_set_name(&stm->dev.kobj, "%s", stm_data->name);
 if (err)
  goto err_device;

 err = device_add(&stm->dev);
 if (err)
  goto err_device;






 pm_runtime_no_callbacks(&stm->dev);
 pm_runtime_use_autosuspend(&stm->dev);
 pm_runtime_set_autosuspend_delay(&stm->dev, 2000);
 pm_runtime_set_suspended(&stm->dev);
 pm_runtime_enable(&stm->dev);

 return 0;

err_device:
 unregister_chrdev(stm->major, stm_data->name);


 put_device(&stm->dev);
err_free:
 vfree(stm);

 return err;
}
