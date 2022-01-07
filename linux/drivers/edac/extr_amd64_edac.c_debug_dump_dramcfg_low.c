
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amd64_pvt {scalar_t__ dram_type; int fam; TYPE_1__* csels; } ;
struct TYPE_2__ {int* csmasks; } ;


 int BIT (int) ;
 scalar_t__ MEM_LRDDR3 ;
 int edac_dbg (int,char*,...) ;

__attribute__((used)) static void debug_dump_dramcfg_low(struct amd64_pvt *pvt, u32 dclr, int chan)
{
 edac_dbg(1, "F2x%d90 (DRAM Cfg Low): 0x%08x\n", chan, dclr);

 if (pvt->dram_type == MEM_LRDDR3) {
  u32 dcsm = pvt->csels[chan].csmasks[0];





  edac_dbg(1, " LRDIMM %dx rank multiply\n", (dcsm & 0x3));
 }

 edac_dbg(1, "All DIMMs support ECC:%s\n",
      (dclr & BIT(19)) ? "yes" : "no");


 edac_dbg(1, "  PAR/ERR parity: %s\n",
   (dclr & BIT(8)) ? "enabled" : "disabled");

 if (pvt->fam == 0x10)
  edac_dbg(1, "  DCT 128bit mode width: %s\n",
    (dclr & BIT(11)) ? "128b" : "64b");

 edac_dbg(1, "  x4 logical DIMMs present: L0: %s L1: %s L2: %s L3: %s\n",
   (dclr & BIT(12)) ? "yes" : "no",
   (dclr & BIT(13)) ? "yes" : "no",
   (dclr & BIT(14)) ? "yes" : "no",
   (dclr & BIT(15)) ? "yes" : "no");
}
