
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mtk_cryp {scalar_t__* irq; int * dev; int clk_cryp; int base; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MTK_IRQ_NUM ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 struct mtk_cryp* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int mtk_accelerator_init (struct mtk_cryp*) ;
 int mtk_cipher_alg_register (struct mtk_cryp*) ;
 int mtk_cipher_alg_release (struct mtk_cryp*) ;
 int mtk_desc_dma_free (struct mtk_cryp*) ;
 int mtk_desc_ring_alloc (struct mtk_cryp*) ;
 int mtk_dfe_dse_reset (struct mtk_cryp*) ;
 int mtk_hash_alg_register (struct mtk_cryp*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_cryp*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int mtk_crypto_probe(struct platform_device *pdev)
{
 struct mtk_cryp *cryp;
 int i, err;

 cryp = devm_kzalloc(&pdev->dev, sizeof(*cryp), GFP_KERNEL);
 if (!cryp)
  return -ENOMEM;

 cryp->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(cryp->base))
  return PTR_ERR(cryp->base);

 for (i = 0; i < MTK_IRQ_NUM; i++) {
  cryp->irq[i] = platform_get_irq(pdev, i);
  if (cryp->irq[i] < 0)
   return cryp->irq[i];
 }

 cryp->clk_cryp = devm_clk_get(&pdev->dev, "cryp");
 if (IS_ERR(cryp->clk_cryp))
  return -EPROBE_DEFER;

 cryp->dev = &pdev->dev;
 pm_runtime_enable(cryp->dev);
 pm_runtime_get_sync(cryp->dev);

 err = clk_prepare_enable(cryp->clk_cryp);
 if (err)
  goto err_clk_cryp;


 err = mtk_desc_ring_alloc(cryp);
 if (err) {
  dev_err(cryp->dev, "Unable to allocate descriptor rings.\n");
  goto err_resource;
 }


 err = mtk_accelerator_init(cryp);
 if (err) {
  dev_err(cryp->dev, "Failed to initialize cryptographic engine.\n");
  goto err_engine;
 }

 err = mtk_cipher_alg_register(cryp);
 if (err) {
  dev_err(cryp->dev, "Unable to register cipher algorithm.\n");
  goto err_cipher;
 }

 err = mtk_hash_alg_register(cryp);
 if (err) {
  dev_err(cryp->dev, "Unable to register hash algorithm.\n");
  goto err_hash;
 }

 platform_set_drvdata(pdev, cryp);
 return 0;

err_hash:
 mtk_cipher_alg_release(cryp);
err_cipher:
 mtk_dfe_dse_reset(cryp);
err_engine:
 mtk_desc_dma_free(cryp);
err_resource:
 clk_disable_unprepare(cryp->clk_cryp);
err_clk_cryp:
 pm_runtime_put_sync(cryp->dev);
 pm_runtime_disable(cryp->dev);

 return err;
}
