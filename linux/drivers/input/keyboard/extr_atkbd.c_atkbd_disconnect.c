
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct serio {TYPE_1__ dev; } ;
struct atkbd {int event_work; int dev; } ;


 int atkbd_attribute_group ;
 int atkbd_disable (struct atkbd*) ;
 int cancel_delayed_work_sync (int *) ;
 int input_unregister_device (int ) ;
 int kfree (struct atkbd*) ;
 int serio_close (struct serio*) ;
 struct atkbd* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void atkbd_disconnect(struct serio *serio)
{
 struct atkbd *atkbd = serio_get_drvdata(serio);

 sysfs_remove_group(&serio->dev.kobj, &atkbd_attribute_group);

 atkbd_disable(atkbd);

 input_unregister_device(atkbd->dev);







 cancel_delayed_work_sync(&atkbd->event_work);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(atkbd);
}
