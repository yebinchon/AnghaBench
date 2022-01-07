
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_txd {int dcon; int dsg_list; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int S3C24XX_DCON_INT ;
 int S3C24XX_DCON_NORELOAD ;
 struct s3c24xx_txd* kzalloc (int,int ) ;

__attribute__((used)) static struct s3c24xx_txd *s3c24xx_dma_get_txd(void)
{
 struct s3c24xx_txd *txd = kzalloc(sizeof(*txd), GFP_NOWAIT);

 if (txd) {
  INIT_LIST_HEAD(&txd->dsg_list);
  txd->dcon = S3C24XX_DCON_INT | S3C24XX_DCON_NORELOAD;
 }

 return txd;
}
