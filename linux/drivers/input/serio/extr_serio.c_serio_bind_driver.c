
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct serio_driver {int description; int driver; int id_table; } ;
struct TYPE_3__ {int * driver; } ;
struct serio {TYPE_1__ dev; int name; int phys; } ;


 int ENODEV ;
 int dev_warn (TYPE_1__*,char*,int ,int ,int ,int) ;
 int device_bind_driver (TYPE_1__*) ;
 scalar_t__ serio_connect_driver (struct serio*,struct serio_driver*) ;
 int serio_disconnect_driver (struct serio*) ;
 scalar_t__ serio_match_port (int ,struct serio*) ;

__attribute__((used)) static int serio_bind_driver(struct serio *serio, struct serio_driver *drv)
{
 int error;

 if (serio_match_port(drv->id_table, serio)) {

  serio->dev.driver = &drv->driver;
  if (serio_connect_driver(serio, drv)) {
   serio->dev.driver = ((void*)0);
   return -ENODEV;
  }

  error = device_bind_driver(&serio->dev);
  if (error) {
   dev_warn(&serio->dev,
     "device_bind_driver() failed for %s (%s) and %s, error: %d\n",
     serio->phys, serio->name,
     drv->description, error);
   serio_disconnect_driver(serio);
   serio->dev.driver = ((void*)0);
   return error;
  }
 }
 return 0;
}
