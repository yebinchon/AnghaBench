
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * maceps2_port ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int maceps2_remove(struct platform_device *dev)
{
 serio_unregister_port(maceps2_port[0]);
 serio_unregister_port(maceps2_port[1]);

 return 0;
}
