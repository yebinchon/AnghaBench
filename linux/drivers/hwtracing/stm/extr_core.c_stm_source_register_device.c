
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kobj; int release; struct device* parent; int * class; } ;
struct stm_source_device {TYPE_1__ dev; struct stm_source_data* data; int link_entry; int link_lock; int output; } ;
struct stm_source_data {struct stm_source_device* src; int name; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int kobject_set_name (int *,char*,int ) ;
 struct stm_source_device* kzalloc (int,int ) ;
 int pm_runtime_forbid (TYPE_1__*) ;
 int pm_runtime_no_callbacks (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int stm_core_up ;
 int stm_output_init (int *) ;
 int stm_source_class ;
 int stm_source_device_release ;

int stm_source_register_device(struct device *parent,
          struct stm_source_data *data)
{
 struct stm_source_device *src;
 int err;

 if (!stm_core_up)
  return -EPROBE_DEFER;

 src = kzalloc(sizeof(*src), GFP_KERNEL);
 if (!src)
  return -ENOMEM;

 device_initialize(&src->dev);
 src->dev.class = &stm_source_class;
 src->dev.parent = parent;
 src->dev.release = stm_source_device_release;

 err = kobject_set_name(&src->dev.kobj, "%s", data->name);
 if (err)
  goto err;

 pm_runtime_no_callbacks(&src->dev);
 pm_runtime_forbid(&src->dev);

 err = device_add(&src->dev);
 if (err)
  goto err;

 stm_output_init(&src->output);
 spin_lock_init(&src->link_lock);
 INIT_LIST_HEAD(&src->link_entry);
 src->data = data;
 data->src = src;

 return 0;

err:
 put_device(&src->dev);

 return err;
}
