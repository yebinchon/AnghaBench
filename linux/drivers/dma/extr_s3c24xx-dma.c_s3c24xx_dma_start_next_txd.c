
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_dma_desc {int tx; } ;
struct TYPE_3__ {int next; } ;
struct TYPE_4__ {int node; } ;
struct s3c24xx_txd {TYPE_1__ dsg_list; int at; TYPE_2__ vd; } ;
struct s3c24xx_dma_phy {int dummy; } ;
struct s3c24xx_dma_chan {struct s3c24xx_txd* at; int vc; struct s3c24xx_dma_phy* phy; } ;


 int cpu_relax () ;
 int list_del (int *) ;
 scalar_t__ s3c24xx_dma_phy_busy (struct s3c24xx_dma_phy*) ;
 int s3c24xx_dma_start_next_sg (struct s3c24xx_dma_chan*,struct s3c24xx_txd*) ;
 struct s3c24xx_txd* to_s3c24xx_txd (int *) ;
 struct virt_dma_desc* vchan_next_desc (int *) ;

__attribute__((used)) static void s3c24xx_dma_start_next_txd(struct s3c24xx_dma_chan *s3cchan)
{
 struct s3c24xx_dma_phy *phy = s3cchan->phy;
 struct virt_dma_desc *vd = vchan_next_desc(&s3cchan->vc);
 struct s3c24xx_txd *txd = to_s3c24xx_txd(&vd->tx);

 list_del(&txd->vd.node);

 s3cchan->at = txd;


 while (s3c24xx_dma_phy_busy(phy))
  cpu_relax();


 txd->at = txd->dsg_list.next;
 s3c24xx_dma_start_next_sg(s3cchan, txd);
}
