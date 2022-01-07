
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2if {int io; } ;
struct platform_device {int dummy; } ;


 struct ps2if* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int altera_ps2_remove(struct platform_device *pdev)
{
 struct ps2if *ps2if = platform_get_drvdata(pdev);

 serio_unregister_port(ps2if->io);

 return 0;
}
