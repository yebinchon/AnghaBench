
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replicator_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ REPLICATOR_IDFILTER0 ;
 scalar_t__ REPLICATOR_IDFILTER1 ;
 int coresight_claim_device_unlocked (scalar_t__) ;
 int coresight_disclaim_device_unlocked (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
{
 CS_UNLOCK(drvdata->base);

 if (!coresight_claim_device_unlocked(drvdata->base)) {
  writel_relaxed(0xff, drvdata->base + REPLICATOR_IDFILTER0);
  writel_relaxed(0xff, drvdata->base + REPLICATOR_IDFILTER1);
  coresight_disclaim_device_unlocked(drvdata->base);
 }

 CS_LOCK(drvdata->base);
}
