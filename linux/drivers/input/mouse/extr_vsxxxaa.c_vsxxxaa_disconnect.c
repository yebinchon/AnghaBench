
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsxxxaa {int dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct vsxxxaa*) ;
 int serio_close (struct serio*) ;
 struct vsxxxaa* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void vsxxxaa_disconnect(struct serio *serio)
{
 struct vsxxxaa *mouse = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(mouse->dev);
 kfree(mouse);
}
