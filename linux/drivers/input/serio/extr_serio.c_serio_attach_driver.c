
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct serio_driver {TYPE_1__ driver; } ;


 int driver_attach (TYPE_1__*) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static void serio_attach_driver(struct serio_driver *drv)
{
 int error;

 error = driver_attach(&drv->driver);
 if (error)
  pr_warn("driver_attach() failed for %s with error %d\n",
   drv->driver.name, error);
}
