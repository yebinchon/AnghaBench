
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_keysc_priv {int iomem_base; int input; } ;
struct platform_device {int dev; } ;


 int KYCR2 ;
 int KYCR2_IRQ_DISABLED ;
 int free_irq (int ,struct platform_device*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct sh_keysc_priv*) ;
 struct sh_keysc_priv* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int sh_keysc_write (struct sh_keysc_priv*,int ,int ) ;

__attribute__((used)) static int sh_keysc_remove(struct platform_device *pdev)
{
 struct sh_keysc_priv *priv = platform_get_drvdata(pdev);

 sh_keysc_write(priv, KYCR2, KYCR2_IRQ_DISABLED);

 input_unregister_device(priv->input);
 free_irq(platform_get_irq(pdev, 0), pdev);
 iounmap(priv->iomem_base);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 kfree(priv);

 return 0;
}
