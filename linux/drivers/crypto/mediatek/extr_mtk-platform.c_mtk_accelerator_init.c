
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_cryp {int dev; } ;


 int MTK_IRQ_NUM ;
 int dev_err (int ,char*) ;
 int mtk_aic_init (struct mtk_cryp*,int) ;
 int mtk_packet_engine_setup (struct mtk_cryp*) ;

__attribute__((used)) static int mtk_accelerator_init(struct mtk_cryp *cryp)
{
 int i, err;


 for (i = 0; i < MTK_IRQ_NUM; i++) {
  err = mtk_aic_init(cryp, i);
  if (err) {
   dev_err(cryp->dev, "Failed to initialize AIC.\n");
   return err;
  }
 }


 err = mtk_packet_engine_setup(cryp);
 if (err) {
  dev_err(cryp->dev, "Failed to configure packet engine.\n");
  return err;
 }

 return 0;
}
