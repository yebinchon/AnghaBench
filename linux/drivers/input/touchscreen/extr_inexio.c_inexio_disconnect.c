
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct inexio {int dev; } ;


 int input_get_device (int ) ;
 int input_put_device (int ) ;
 int input_unregister_device (int ) ;
 int kfree (struct inexio*) ;
 int serio_close (struct serio*) ;
 struct inexio* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void inexio_disconnect(struct serio *serio)
{
 struct inexio *pinexio = serio_get_drvdata(serio);

 input_get_device(pinexio->dev);
 input_unregister_device(pinexio->dev);
 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_put_device(pinexio->dev);
 kfree(pinexio);
}
