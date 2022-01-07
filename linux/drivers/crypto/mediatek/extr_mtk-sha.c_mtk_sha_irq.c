
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_sha_rec {int flags; int done_task; int id; struct mtk_cryp* cryp; } ;
struct mtk_cryp {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MTK_CNT_RST ;
 int MTK_RDR_PROC_MODE ;
 int MTK_RDR_PROC_THRESH ;
 int RDR_PROC_COUNT (int ) ;
 int RDR_STAT (int ) ;
 int RDR_THRESH (int ) ;
 int SHA_FLAGS_BUSY ;
 int dev_warn (int ,char*) ;
 scalar_t__ likely (int) ;
 int mtk_sha_read (struct mtk_cryp*,int ) ;
 int mtk_sha_write (struct mtk_cryp*,int ,int) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mtk_sha_irq(int irq, void *dev_id)
{
 struct mtk_sha_rec *sha = (struct mtk_sha_rec *)dev_id;
 struct mtk_cryp *cryp = sha->cryp;
 u32 val = mtk_sha_read(cryp, RDR_STAT(sha->id));

 mtk_sha_write(cryp, RDR_STAT(sha->id), val);

 if (likely((SHA_FLAGS_BUSY & sha->flags))) {
  mtk_sha_write(cryp, RDR_PROC_COUNT(sha->id), MTK_CNT_RST);
  mtk_sha_write(cryp, RDR_THRESH(sha->id),
         MTK_RDR_PROC_THRESH | MTK_RDR_PROC_MODE);

  tasklet_schedule(&sha->done_task);
 } else {
  dev_warn(cryp->dev, "SHA interrupt when no active requests.\n");
 }
 return IRQ_HANDLED;
}
