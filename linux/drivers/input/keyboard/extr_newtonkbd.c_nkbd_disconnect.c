
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct nkbd {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct nkbd*) ;
 int serio_close (struct serio*) ;
 struct nkbd* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void nkbd_disconnect(struct serio *serio)
{
 struct nkbd *nkbd = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(nkbd->dev);
 kfree(nkbd);
}
