
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int bus; } ;
struct platform_device {int dummy; } ;


 int mcb_release_bus (int ) ;
 struct priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mcb_lpc_remove(struct platform_device *pdev)
{
 struct priv *priv = platform_get_drvdata(pdev);

 mcb_release_bus(priv->bus);

 return 0;
}
