
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warrior {int dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct warrior*) ;
 int serio_close (struct serio*) ;
 struct warrior* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void warrior_disconnect(struct serio *serio)
{
 struct warrior *warrior = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(warrior->dev);
 kfree(warrior);
}
