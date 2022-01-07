
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chan; } ;
struct virt_dma_desc {TYPE_1__ tx; } ;
struct s3c24xx_txd {int dummy; } ;
struct s3c24xx_dma_chan {int slave; } ;


 int dma_descriptor_unmap (TYPE_1__*) ;
 int s3c24xx_dma_free_txd (struct s3c24xx_txd*) ;
 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (int ) ;
 struct s3c24xx_txd* to_s3c24xx_txd (TYPE_1__*) ;

__attribute__((used)) static void s3c24xx_dma_desc_free(struct virt_dma_desc *vd)
{
 struct s3c24xx_txd *txd = to_s3c24xx_txd(&vd->tx);
 struct s3c24xx_dma_chan *s3cchan = to_s3c24xx_dma_chan(vd->tx.chan);

 if (!s3cchan->slave)
  dma_descriptor_unmap(&vd->tx);

 s3c24xx_dma_free_txd(txd);
}
