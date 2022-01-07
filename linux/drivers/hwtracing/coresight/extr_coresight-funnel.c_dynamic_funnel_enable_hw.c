
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct funnel_drvdata {int priority; scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 int FUNNEL_ENSx_MASK ;
 scalar_t__ FUNNEL_FUNCTL ;
 int FUNNEL_HOLDTIME ;
 int FUNNEL_HOLDTIME_MASK ;
 scalar_t__ FUNNEL_PRICTL ;
 int coresight_claim_device_unlocked (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
{
 u32 functl;
 int rc = 0;

 CS_UNLOCK(drvdata->base);

 functl = readl_relaxed(drvdata->base + FUNNEL_FUNCTL);

 if (!(functl & FUNNEL_ENSx_MASK)) {
  rc = coresight_claim_device_unlocked(drvdata->base);
  if (rc)
   goto done;
 }

 functl &= ~FUNNEL_HOLDTIME_MASK;
 functl |= FUNNEL_HOLDTIME;
 functl |= (1 << port);
 writel_relaxed(functl, drvdata->base + FUNNEL_FUNCTL);
 writel_relaxed(drvdata->priority, drvdata->base + FUNNEL_PRICTL);
done:
 CS_LOCK(drvdata->base);
 return rc;
}
