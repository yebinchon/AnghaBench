
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct fsia6b {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct fsia6b*) ;
 int serio_close (struct serio*) ;
 struct fsia6b* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;

__attribute__((used)) static void fsia6b_serio_disconnect(struct serio *serio)
{
 struct fsia6b *fsia6b = serio_get_drvdata(serio);

 serio_close(serio);
 serio_set_drvdata(serio, ((void*)0));
 input_unregister_device(fsia6b->dev);
 kfree(fsia6b);
}
