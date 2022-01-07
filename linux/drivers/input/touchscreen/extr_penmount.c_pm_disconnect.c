
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct pm {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct pm*) ;
 int serio_close (struct serio*) ;
 struct pm* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void pm_disconnect(struct serio *serio)
{
 struct pm *pm = serio_get_drvdata(serio);

 serio_close(serio);

 input_unregister_device(pm->dev);
 kfree(pm);

 serio_set_drvdata(serio, ((void*)0));
}
