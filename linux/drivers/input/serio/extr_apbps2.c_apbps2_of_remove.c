
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct apbps2_priv {int io; } ;


 struct apbps2_priv* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int apbps2_of_remove(struct platform_device *of_dev)
{
 struct apbps2_priv *priv = platform_get_drvdata(of_dev);

 serio_unregister_port(priv->io);

 return 0;
}
