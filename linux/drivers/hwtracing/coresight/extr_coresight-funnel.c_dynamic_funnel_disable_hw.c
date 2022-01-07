
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct funnel_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 int FUNNEL_ENSx_MASK ;
 scalar_t__ FUNNEL_FUNCTL ;
 int coresight_disclaim_device_unlocked (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void dynamic_funnel_disable_hw(struct funnel_drvdata *drvdata,
          int inport)
{
 u32 functl;

 CS_UNLOCK(drvdata->base);

 functl = readl_relaxed(drvdata->base + FUNNEL_FUNCTL);
 functl &= ~(1 << inport);
 writel_relaxed(functl, drvdata->base + FUNNEL_FUNCTL);


 if (!(functl & FUNNEL_ENSx_MASK))
  coresight_disclaim_device_unlocked(drvdata->base);

 CS_LOCK(drvdata->base);
}
