
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct iforce_serio {TYPE_1__ iforce; } ;


 int input_unregister_device (int ) ;
 int kfree (struct iforce_serio*) ;
 int serio_close (struct serio*) ;
 struct iforce_serio* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void iforce_serio_disconnect(struct serio *serio)
{
 struct iforce_serio *iforce_serio = serio_get_drvdata(serio);

 input_unregister_device(iforce_serio->iforce.dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 kfree(iforce_serio);
}
