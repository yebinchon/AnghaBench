
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc_ser {int dev; } ;
struct serio {int dummy; } ;


 int input_unregister_device (int ) ;
 int kfree (struct tsc_ser*) ;
 int serio_close (struct serio*) ;
 struct tsc_ser* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void tsc_disconnect(struct serio *serio)
{
 struct tsc_ser *ptsc = serio_get_drvdata(serio);

 serio_close(serio);

 input_unregister_device(ptsc->dev);
 kfree(ptsc);

 serio_set_drvdata(serio, ((void*)0));
}
