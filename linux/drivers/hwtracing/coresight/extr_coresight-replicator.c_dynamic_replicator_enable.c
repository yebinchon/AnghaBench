
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct replicator_drvdata {scalar_t__ base; } ;


 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 int EINVAL ;
 scalar_t__ REPLICATOR_IDFILTER0 ;
 scalar_t__ REPLICATOR_IDFILTER1 ;
 int WARN_ON (int) ;
 int coresight_claim_device_unlocked (scalar_t__) ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
         int inport, int outport)
{
 int rc = 0;
 u32 reg;

 switch (outport) {
 case 0:
  reg = REPLICATOR_IDFILTER0;
  break;
 case 1:
  reg = REPLICATOR_IDFILTER1;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 CS_UNLOCK(drvdata->base);

 if ((readl_relaxed(drvdata->base + REPLICATOR_IDFILTER0) == 0xff) &&
     (readl_relaxed(drvdata->base + REPLICATOR_IDFILTER1) == 0xff))
  rc = coresight_claim_device_unlocked(drvdata->base);


 if (!rc)
  writel_relaxed(0x00, drvdata->base + reg);
 CS_LOCK(drvdata->base);

 return rc;
}
