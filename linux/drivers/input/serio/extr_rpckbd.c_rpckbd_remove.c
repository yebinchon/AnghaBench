
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {struct rpckbd_data* port_data; } ;
struct rpckbd_data {int dummy; } ;
struct platform_device {int dummy; } ;


 int kfree (struct rpckbd_data*) ;
 struct serio* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (struct serio*) ;

__attribute__((used)) static int rpckbd_remove(struct platform_device *dev)
{
 struct serio *serio = platform_get_drvdata(dev);
 struct rpckbd_data *rpckbd = serio->port_data;

 serio_unregister_port(serio);
 kfree(rpckbd);

 return 0;
}
