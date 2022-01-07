
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENOMEM ;
 int kfree (int ) ;
 int maceps2_allocate_port (int) ;
 int * maceps2_port ;
 int serio_register_port (int ) ;

__attribute__((used)) static int maceps2_probe(struct platform_device *dev)
{
 maceps2_port[0] = maceps2_allocate_port(0);
 maceps2_port[1] = maceps2_allocate_port(1);
 if (!maceps2_port[0] || !maceps2_port[1]) {
  kfree(maceps2_port[0]);
  kfree(maceps2_port[1]);
  return -ENOMEM;
 }

 serio_register_port(maceps2_port[0]);
 serio_register_port(maceps2_port[1]);

 return 0;
}
