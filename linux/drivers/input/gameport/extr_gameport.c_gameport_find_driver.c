
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int name; int phys; int dev; } ;


 int dev_warn (int *,char*,int ,int ,int) ;
 int device_attach (int *) ;

__attribute__((used)) static void gameport_find_driver(struct gameport *gameport)
{
 int error;

 error = device_attach(&gameport->dev);
 if (error < 0)
  dev_warn(&gameport->dev,
    "device_attach() failed for %s (%s), error: %d\n",
    gameport->phys, gameport->name, error);
}
