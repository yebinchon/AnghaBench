
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;
struct device {int dummy; } ;


 int THIS_MODULE ;
 int kfree (struct serio*) ;
 int module_put (int ) ;
 struct serio* to_serio_port (struct device*) ;

__attribute__((used)) static void serio_release_port(struct device *dev)
{
 struct serio *serio = to_serio_port(dev);

 kfree(serio);
 module_put(THIS_MODULE);
}
