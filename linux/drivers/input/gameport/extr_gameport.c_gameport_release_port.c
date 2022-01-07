
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gameport {int dummy; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int kfree (struct gameport*) ;
 int module_put (int ) ;
 struct gameport* to_gameport_port (struct device*) ;

__attribute__((used)) static void gameport_release_port(struct device *dev)
{
 struct gameport *gameport = to_gameport_port(dev);

 kfree(gameport);
 module_put(THIS_MODULE);
}
