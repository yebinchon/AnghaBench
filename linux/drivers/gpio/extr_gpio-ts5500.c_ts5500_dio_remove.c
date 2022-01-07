
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts5500_priv {int dummy; } ;
struct platform_device {int dummy; } ;


 struct ts5500_priv* platform_get_drvdata (struct platform_device*) ;
 int ts5500_disable_irq (struct ts5500_priv*) ;

__attribute__((used)) static int ts5500_dio_remove(struct platform_device *pdev)
{
 struct ts5500_priv *priv = platform_get_drvdata(pdev);

 ts5500_disable_irq(priv);

 return 0;
}
