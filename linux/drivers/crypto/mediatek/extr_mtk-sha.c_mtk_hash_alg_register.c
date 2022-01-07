
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_cryp {int dev; int sha_list; int * sha; int * irq; } ;
struct TYPE_2__ {int lock; int dev_list; } ;


 int AIC_ENABLE_SET (size_t) ;
 int INIT_LIST_HEAD (int *) ;
 int MTK_IRQ_RDR2 ;
 int MTK_IRQ_RDR3 ;
 size_t MTK_RING2 ;
 size_t MTK_RING3 ;
 int dev_err (int ,char*) ;
 int devm_request_irq (int ,int ,int ,int ,char*,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 TYPE_1__ mtk_sha ;
 int mtk_sha_irq ;
 int mtk_sha_record_free (struct mtk_cryp*) ;
 int mtk_sha_record_init (struct mtk_cryp*) ;
 int mtk_sha_register_algs () ;
 int mtk_sha_write (struct mtk_cryp*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int mtk_hash_alg_register(struct mtk_cryp *cryp)
{
 int err;

 INIT_LIST_HEAD(&cryp->sha_list);


 err = mtk_sha_record_init(cryp);
 if (err)
  goto err_record;

 err = devm_request_irq(cryp->dev, cryp->irq[MTK_RING2], mtk_sha_irq,
          0, "mtk-sha", cryp->sha[0]);
 if (err) {
  dev_err(cryp->dev, "unable to request sha irq0.\n");
  goto err_res;
 }

 err = devm_request_irq(cryp->dev, cryp->irq[MTK_RING3], mtk_sha_irq,
          0, "mtk-sha", cryp->sha[1]);
 if (err) {
  dev_err(cryp->dev, "unable to request sha irq1.\n");
  goto err_res;
 }


 mtk_sha_write(cryp, AIC_ENABLE_SET(MTK_RING2), MTK_IRQ_RDR2);
 mtk_sha_write(cryp, AIC_ENABLE_SET(MTK_RING3), MTK_IRQ_RDR3);

 spin_lock(&mtk_sha.lock);
 list_add_tail(&cryp->sha_list, &mtk_sha.dev_list);
 spin_unlock(&mtk_sha.lock);

 err = mtk_sha_register_algs();
 if (err)
  goto err_algs;

 return 0;

err_algs:
 spin_lock(&mtk_sha.lock);
 list_del(&cryp->sha_list);
 spin_unlock(&mtk_sha.lock);
err_res:
 mtk_sha_record_free(cryp);
err_record:

 dev_err(cryp->dev, "mtk-sha initialization failed.\n");
 return err;
}
