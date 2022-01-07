
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_dma_phy {scalar_t__ base; } ;


 scalar_t__ S3C24XX_DSTAT ;
 unsigned int S3C24XX_DSTAT_STAT_BUSY ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int s3c24xx_dma_phy_busy(struct s3c24xx_dma_phy *phy)
{
 unsigned int val = readl(phy->base + S3C24XX_DSTAT);
 return val & S3C24XX_DSTAT_STAT_BUSY;
}
