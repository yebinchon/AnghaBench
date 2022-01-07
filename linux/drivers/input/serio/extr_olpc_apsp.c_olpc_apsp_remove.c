
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct olpc_apsp {int padio; int kbio; int irq; } ;


 int free_irq (int ,struct olpc_apsp*) ;
 struct olpc_apsp* platform_get_drvdata (struct platform_device*) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int olpc_apsp_remove(struct platform_device *pdev)
{
 struct olpc_apsp *priv = platform_get_drvdata(pdev);

 free_irq(priv->irq, priv);

 serio_unregister_port(priv->kbio);
 serio_unregister_port(priv->padio);

 return 0;
}
