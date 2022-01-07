
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct ps2mult {int dummy; } ;


 int PS2MULT_SESSION_END ;
 int kfree (struct ps2mult*) ;
 int serio_close (struct serio*) ;
 struct ps2mult* serio_get_drvdata (struct serio*) ;
 int serio_set_drvdata (struct serio*,int *) ;
 int serio_write (struct serio*,int ) ;

__attribute__((used)) static void ps2mult_disconnect(struct serio *serio)
{
 struct ps2mult *psm = serio_get_drvdata(serio);


 serio_write(serio, PS2MULT_SESSION_END);
 serio_close(serio);
 kfree(psm);

 serio_set_drvdata(serio, ((void*)0));
}
