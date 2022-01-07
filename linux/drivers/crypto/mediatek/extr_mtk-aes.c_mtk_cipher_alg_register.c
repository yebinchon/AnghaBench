
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {int dev; int aes_list; int * aes; int * irq; } ;
struct TYPE_2__ {int lock; int dev_list; } ;


 int AIC_ENABLE_SET (size_t) ;
 int INIT_LIST_HEAD (int *) ;
 int MTK_IRQ_RDR0 ;
 int MTK_IRQ_RDR1 ;
 size_t MTK_RING0 ;
 size_t MTK_RING1 ;
 int dev_err (int ,char*) ;
 int devm_request_irq (int ,int ,int ,int ,char*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 TYPE_1__ mtk_aes ;
 int mtk_aes_irq ;
 int mtk_aes_record_free (struct mtk_cryp*) ;
 int mtk_aes_record_init (struct mtk_cryp*) ;
 int mtk_aes_register_algs () ;
 int mtk_aes_write (struct mtk_cryp*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mtk_cipher_alg_register(struct mtk_cryp *cryp)
{
 int ret;

 INIT_LIST_HEAD(&cryp->aes_list);


 ret = mtk_aes_record_init(cryp);
 if (ret)
  goto err_record;

 ret = devm_request_irq(cryp->dev, cryp->irq[MTK_RING0], mtk_aes_irq,
          0, "mtk-aes", cryp->aes[0]);
 if (ret) {
  dev_err(cryp->dev, "unable to request AES irq.\n");
  goto err_res;
 }

 ret = devm_request_irq(cryp->dev, cryp->irq[MTK_RING1], mtk_aes_irq,
          0, "mtk-aes", cryp->aes[1]);
 if (ret) {
  dev_err(cryp->dev, "unable to request AES irq.\n");
  goto err_res;
 }


 mtk_aes_write(cryp, AIC_ENABLE_SET(MTK_RING0), MTK_IRQ_RDR0);
 mtk_aes_write(cryp, AIC_ENABLE_SET(MTK_RING1), MTK_IRQ_RDR1);

 spin_lock(&mtk_aes.lock);
 list_add_tail(&cryp->aes_list, &mtk_aes.dev_list);
 spin_unlock(&mtk_aes.lock);

 ret = mtk_aes_register_algs();
 if (ret)
  goto err_algs;

 return 0;

err_algs:
 spin_lock(&mtk_aes.lock);
 list_del(&cryp->aes_list);
 spin_unlock(&mtk_aes.lock);
err_res:
 mtk_aes_record_free(cryp);
err_record:

 dev_err(cryp->dev, "mtk-aes initialization failed.\n");
 return ret;
}
