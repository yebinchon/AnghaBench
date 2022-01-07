
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct debug_drvdata {int edpcsr_present; int edcidsr_present; int edvidsr_present; int pc_has_offset; scalar_t__ base; } ;


 int CONFIG_64BIT ;
 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ EDDEVID ;
 scalar_t__ EDDEVID1 ;
 int EDDEVID1_PCSR_NO_OFFSET_DIS_AARCH32 ;
 int EDDEVID1_PCSR_OFFSET_INS_SET ;
 int EDDEVID1_PCSR_OFFSET_MASK ;



 int EDDEVID_PCSAMPLE_MODE ;
 int IS_ENABLED (int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void debug_init_arch_data(void *info)
{
 struct debug_drvdata *drvdata = info;
 u32 mode, pcsr_offset;
 u32 eddevid, eddevid1;

 CS_UNLOCK(drvdata->base);


 eddevid = readl_relaxed(drvdata->base + EDDEVID);
 eddevid1 = readl_relaxed(drvdata->base + EDDEVID1);

 CS_LOCK(drvdata->base);


 mode = eddevid & EDDEVID_PCSAMPLE_MODE;
 pcsr_offset = eddevid1 & EDDEVID1_PCSR_OFFSET_MASK;

 drvdata->edpcsr_present = 0;
 drvdata->edcidsr_present = 0;
 drvdata->edvidsr_present = 0;
 drvdata->pc_has_offset = 0;

 switch (mode) {
 case 128:
  drvdata->edvidsr_present = 1;

 case 129:
  drvdata->edcidsr_present = 1;

 case 130:







  drvdata->edpcsr_present =
   ((IS_ENABLED(CONFIG_64BIT) && pcsr_offset != 0) ||
    (pcsr_offset != EDDEVID1_PCSR_NO_OFFSET_DIS_AARCH32));

  drvdata->pc_has_offset =
   (pcsr_offset == EDDEVID1_PCSR_OFFSET_INS_SET);
  break;
 default:
  break;
 }
}
