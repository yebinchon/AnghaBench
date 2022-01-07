
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct debug_drvdata {scalar_t__ edpcsr; scalar_t__ base; void* edvidsr; scalar_t__ edvidsr_present; void* edcidsr; scalar_t__ edcidsr_present; void* edpcsr_hi; } ;


 int CONFIG_64BIT ;
 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ EDCIDSR ;
 scalar_t__ EDPCSR ;
 scalar_t__ EDPCSR_HI ;
 scalar_t__ EDPCSR_PROHIBITED ;
 scalar_t__ EDPRCR ;
 scalar_t__ EDVIDSR ;
 scalar_t__ IS_ENABLED (int ) ;
 int debug_access_permitted (struct debug_drvdata*) ;
 int debug_force_cpu_powered_up (struct debug_drvdata*) ;
 int debug_os_unlock (struct debug_drvdata*) ;
 void* readl_relaxed (scalar_t__) ;
 int writel_relaxed (void*,scalar_t__) ;

__attribute__((used)) static void debug_read_regs(struct debug_drvdata *drvdata)
{
 u32 save_edprcr;

 CS_UNLOCK(drvdata->base);


 debug_os_unlock(drvdata);


 save_edprcr = readl_relaxed(drvdata->base + EDPRCR);





 debug_force_cpu_powered_up(drvdata);

 if (!debug_access_permitted(drvdata))
  goto out;

 drvdata->edpcsr = readl_relaxed(drvdata->base + EDPCSR);
 if (drvdata->edpcsr == EDPCSR_PROHIBITED)
  goto out;






 if (IS_ENABLED(CONFIG_64BIT))
  drvdata->edpcsr_hi = readl_relaxed(drvdata->base + EDPCSR_HI);

 if (drvdata->edcidsr_present)
  drvdata->edcidsr = readl_relaxed(drvdata->base + EDCIDSR);

 if (drvdata->edvidsr_present)
  drvdata->edvidsr = readl_relaxed(drvdata->base + EDVIDSR);

out:

 writel_relaxed(save_edprcr, drvdata->base + EDPRCR);

 CS_LOCK(drvdata->base);
}
