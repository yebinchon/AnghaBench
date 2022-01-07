
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* next; } ;
struct s3c24xx_txd {TYPE_5__ dsg_list; TYPE_4__* at; int vd; scalar_t__ cyclic; } ;
struct s3c24xx_dma_phy {int id; TYPE_2__* host; struct s3c24xx_dma_chan* serving; } ;
struct TYPE_8__ {int lock; } ;
struct s3c24xx_dma_chan {TYPE_3__ vc; struct s3c24xx_txd* at; } ;
typedef int irqreturn_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {int dev; } ;


 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,int ) ;
 int dev_err (int *,char*,int ) ;
 int list_is_last (TYPE_4__*,TYPE_5__*) ;
 int s3c24xx_dma_phy_free (struct s3c24xx_dma_chan*) ;
 int s3c24xx_dma_start_next_sg (struct s3c24xx_dma_chan*,struct s3c24xx_txd*) ;
 int s3c24xx_dma_start_next_txd (struct s3c24xx_dma_chan*) ;
 int s3c24xx_dma_terminate_phy (struct s3c24xx_dma_phy*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;
 scalar_t__ vchan_next_desc (TYPE_3__*) ;

__attribute__((used)) static irqreturn_t s3c24xx_dma_irq(int irq, void *data)
{
 struct s3c24xx_dma_phy *phy = data;
 struct s3c24xx_dma_chan *s3cchan = phy->serving;
 struct s3c24xx_txd *txd;

 dev_dbg(&phy->host->pdev->dev, "interrupt on channel %d\n", phy->id);
 if (unlikely(!s3cchan)) {
  dev_err(&phy->host->pdev->dev, "interrupt on unused channel %d\n",
   phy->id);

  s3c24xx_dma_terminate_phy(phy);

  return IRQ_HANDLED;
 }

 spin_lock(&s3cchan->vc.lock);
 txd = s3cchan->at;
 if (txd) {

  if (!list_is_last(txd->at, &txd->dsg_list)) {
   txd->at = txd->at->next;
   if (txd->cyclic)
    vchan_cyclic_callback(&txd->vd);
   s3c24xx_dma_start_next_sg(s3cchan, txd);
  } else if (!txd->cyclic) {
   s3cchan->at = ((void*)0);
   vchan_cookie_complete(&txd->vd);





   if (vchan_next_desc(&s3cchan->vc))
    s3c24xx_dma_start_next_txd(s3cchan);
   else
    s3c24xx_dma_phy_free(s3cchan);
  } else {
   vchan_cyclic_callback(&txd->vd);


   txd->at = txd->dsg_list.next;
   s3c24xx_dma_start_next_sg(s3cchan, txd);
  }
 }
 spin_unlock(&s3cchan->vc.lock);

 return IRQ_HANDLED;
}
