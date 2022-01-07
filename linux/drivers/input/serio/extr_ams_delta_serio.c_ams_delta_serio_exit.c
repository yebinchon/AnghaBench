
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ams_delta_serio {int serio; } ;


 struct ams_delta_serio* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int ams_delta_serio_exit(struct platform_device *pdev)
{
 struct ams_delta_serio *priv = platform_get_drvdata(pdev);

 serio_unregister_port(priv->serio);

 return 0;
}
