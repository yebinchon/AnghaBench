
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_cryp {int dev; int clk_cryp; } ;


 int clk_disable_unprepare (int ) ;
 int mtk_cipher_alg_release (struct mtk_cryp*) ;
 int mtk_desc_dma_free (struct mtk_cryp*) ;
 int mtk_hash_alg_release (struct mtk_cryp*) ;
 struct mtk_cryp* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int mtk_crypto_remove(struct platform_device *pdev)
{
 struct mtk_cryp *cryp = platform_get_drvdata(pdev);

 mtk_hash_alg_release(cryp);
 mtk_cipher_alg_release(cryp);
 mtk_desc_dma_free(cryp);

 clk_disable_unprepare(cryp->clk_cryp);

 pm_runtime_put_sync(cryp->dev);
 pm_runtime_disable(cryp->dev);
 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
