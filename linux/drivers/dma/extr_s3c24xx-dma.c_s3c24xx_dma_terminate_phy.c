
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_phy {scalar_t__ base; } ;


 scalar_t__ S3C24XX_DMASKTRIG ;
 int S3C24XX_DMASKTRIG_STOP ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3c24xx_dma_terminate_phy(struct s3c24xx_dma_phy *phy)
{
 writel(S3C24XX_DMASKTRIG_STOP, phy->base + S3C24XX_DMASKTRIG);
}
