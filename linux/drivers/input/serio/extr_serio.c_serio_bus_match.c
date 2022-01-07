
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int id_table; scalar_t__ manual_bind; } ;
struct serio {scalar_t__ manual_bind; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int serio_match_port (int ,struct serio*) ;
 struct serio_driver* to_serio_driver (struct device_driver*) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static int serio_bus_match(struct device *dev, struct device_driver *drv)
{
 struct serio *serio = to_serio_port(dev);
 struct serio_driver *serio_drv = to_serio_driver(drv);

 if (serio->manual_bind || serio_drv->manual_bind)
  return 0;

 return serio_match_port(serio_drv->id_table, serio);
}
