
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int (* close ) (struct serio*) ;} ;


 int serio_set_drv (struct serio*,int *) ;
 int stub1 (struct serio*) ;

void serio_close(struct serio *serio)
{
 if (serio->close)
  serio->close(serio);

 serio_set_drv(serio, ((void*)0));
}
