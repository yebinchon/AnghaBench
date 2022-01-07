
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpiu_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 int FFCR_FON_MAN ;
 int FFCR_FON_MAN_BIT ;
 int FFCR_STOP_FI ;
 int FFSR_FT_STOPPED_BIT ;
 scalar_t__ TPIU_FFCR ;
 scalar_t__ TPIU_FFSR ;
 int coresight_timeout (scalar_t__,scalar_t__,int ,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void tpiu_disable_hw(struct tpiu_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);


 writel_relaxed(FFCR_STOP_FI, drvdata->base + TPIU_FFCR);

 writel_relaxed(FFCR_STOP_FI | FFCR_FON_MAN, drvdata->base + TPIU_FFCR);

 coresight_timeout(drvdata->base, TPIU_FFCR, FFCR_FON_MAN_BIT, 0);

 coresight_timeout(drvdata->base, TPIU_FFSR, FFSR_FT_STOPPED_BIT, 1);

 CS_LOCK(drvdata->base);
}
