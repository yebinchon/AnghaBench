
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etm_drvdata {scalar_t__ base; } ;


 scalar_t__ ETMPDCR ;
 int ETMPDCR_PWD_UP ;
 int isb () ;
 int mb () ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void etm_clr_pwrup(struct etm_drvdata *drvdata)
{
 u32 etmpdcr;


 mb();
 isb();
 etmpdcr = readl_relaxed(drvdata->base + ETMPDCR);
 etmpdcr &= ~ETMPDCR_PWD_UP;
 writel_relaxed(etmpdcr, drvdata->base + ETMPDCR);
}
