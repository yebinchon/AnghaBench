
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etm_drvdata {int dummy; } ;


 int ETMCR ;
 int ETMCR_PWD_DWN ;
 int etm_readl (struct etm_drvdata*,int ) ;
 int etm_writel (struct etm_drvdata*,int ,int ) ;
 int isb () ;
 int mb () ;

__attribute__((used)) static void etm_clr_pwrdwn(struct etm_drvdata *drvdata)
{
 u32 etmcr;

 etmcr = etm_readl(drvdata, ETMCR);
 etmcr &= ~ETMCR_PWD_DWN;
 etm_writel(drvdata, etmcr, ETMCR);

 mb();
 isb();
}
