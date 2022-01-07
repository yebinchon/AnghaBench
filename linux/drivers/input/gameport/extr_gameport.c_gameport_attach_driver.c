
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct gameport_driver {TYPE_1__ driver; } ;


 int driver_attach (TYPE_1__*) ;
 int pr_err (char*,int ,int) ;

__attribute__((used)) static void gameport_attach_driver(struct gameport_driver *drv)
{
 int error;

 error = driver_attach(&drv->driver);
 if (error)
  pr_err("driver_attach() failed for %s, error: %d\n",
   drv->driver.name, error);
}
