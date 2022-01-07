
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_drvdata {int stmhebsr; int stmheter; int stmheer; scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ STMHEBSR ;
 scalar_t__ STMHEER ;
 scalar_t__ STMHEMCR ;
 scalar_t__ STMHETER ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm_hwevent_enable_hw(struct stm_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);

 writel_relaxed(drvdata->stmhebsr, drvdata->base + STMHEBSR);
 writel_relaxed(drvdata->stmheter, drvdata->base + STMHETER);
 writel_relaxed(drvdata->stmheer, drvdata->base + STMHEER);
 writel_relaxed(0x01 |
         0x04,
         drvdata->base + STMHEMCR);

 CS_LOCK(drvdata->base);
}
