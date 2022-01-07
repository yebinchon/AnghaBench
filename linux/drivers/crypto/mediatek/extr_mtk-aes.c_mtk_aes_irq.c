
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_cryp {int dev; } ;
struct mtk_aes_rec {int flags; int done_task; int id; struct mtk_cryp* cryp; } ;
typedef int irqreturn_t ;


 int AES_FLAGS_BUSY ;
 int IRQ_HANDLED ;
 int MTK_CNT_RST ;
 int MTK_RDR_PROC_MODE ;
 int MTK_RDR_PROC_THRESH ;
 int RDR_PROC_COUNT (int ) ;
 int RDR_STAT (int ) ;
 int RDR_THRESH (int ) ;
 int dev_warn (int ,char*) ;
 scalar_t__ likely (int) ;
 int mtk_aes_read (struct mtk_cryp*,int ) ;
 int mtk_aes_write (struct mtk_cryp*,int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mtk_aes_irq(int irq, void *dev_id)
{
 struct mtk_aes_rec *aes = (struct mtk_aes_rec *)dev_id;
 struct mtk_cryp *cryp = aes->cryp;
 u32 val = mtk_aes_read(cryp, RDR_STAT(aes->id));

 mtk_aes_write(cryp, RDR_STAT(aes->id), val);

 if (likely(AES_FLAGS_BUSY & aes->flags)) {
  mtk_aes_write(cryp, RDR_PROC_COUNT(aes->id), MTK_CNT_RST);
  mtk_aes_write(cryp, RDR_THRESH(aes->id),
         MTK_RDR_PROC_THRESH | MTK_RDR_PROC_MODE);

  tasklet_schedule(&aes->done_task);
 } else {
  dev_warn(cryp->dev, "AES interrupt when no active requests.\n");
 }
 return IRQ_HANDLED;
}
