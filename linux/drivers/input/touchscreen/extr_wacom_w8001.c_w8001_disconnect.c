
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {scalar_t__ touch_dev; scalar_t__ pen_dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (scalar_t__) ;
 int kfree (struct w8001*) ;
 int serio_close (struct serio*) ;
 struct w8001* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void w8001_disconnect(struct serio *serio)
{
 struct w8001 *w8001 = serio_get_drvdata(serio);

 serio_close(serio);

 if (w8001->pen_dev)
  input_unregister_device(w8001->pen_dev);
 if (w8001->touch_dev)
  input_unregister_device(w8001->touch_dev);
 kfree(w8001);

 serio_set_drvdata(serio, ((void*)0));
}
