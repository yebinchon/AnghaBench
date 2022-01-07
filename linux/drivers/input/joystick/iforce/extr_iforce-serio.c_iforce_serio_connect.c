
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio_driver {int dummy; } ;
struct serio {int dev; } ;
struct TYPE_2__ {int * xport_ops; } ;
struct iforce_serio {TYPE_1__ iforce; struct serio* serio; } ;


 int BUS_RS232 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int iforce_init_device (int *,int ,TYPE_1__*) ;
 int iforce_serio_xport_ops ;
 int kfree (struct iforce_serio*) ;
 struct iforce_serio* kzalloc (int,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct iforce_serio*) ;

__attribute__((used)) static int iforce_serio_connect(struct serio *serio, struct serio_driver *drv)
{
 struct iforce_serio *iforce_serio;
 int err;

 iforce_serio = kzalloc(sizeof(*iforce_serio), GFP_KERNEL);
 if (!iforce_serio)
  return -ENOMEM;

 iforce_serio->iforce.xport_ops = &iforce_serio_xport_ops;

 iforce_serio->serio = serio;
 serio_set_drvdata(serio, iforce_serio);

 err = serio_open(serio, drv);
 if (err)
  goto fail1;

 err = iforce_init_device(&serio->dev, BUS_RS232, &iforce_serio->iforce);
 if (err)
  goto fail2;

 return 0;

 fail2: serio_close(serio);
 fail1: serio_set_drvdata(serio, ((void*)0));
 kfree(iforce_serio);
 return err;
}
