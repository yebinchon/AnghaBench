
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct gunze {int dev; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct gunze*) ;
 int serio_close (struct serio*) ;
 struct gunze* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void gunze_disconnect(struct serio *serio)
{
 struct gunze *gunze = serio_get_drvdata(serio);

 input_get_device(gunze->dev);
 input_unregister_device(gunze->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(gunze->dev);
 kfree(gunze);
}
