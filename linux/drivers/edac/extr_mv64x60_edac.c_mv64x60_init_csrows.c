
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mv64x60_mc_pdata {int total_mem; scalar_t__ mc_vbase; } ;
struct mem_ctl_info {struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int dtype; int mtype; } ;
struct csrow_info {TYPE_1__** channels; } ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int DEV_UNKNOWN ;
 int DEV_X16 ;
 int DEV_X32 ;
 int DEV_X4 ;
 int EDAC_SECDED ;
 int MEM_DDR ;
 int MEM_RDDR ;
 scalar_t__ MV64X60_SDRAM_CONFIG ;
 int MV64X60_SDRAM_REGISTERED ;
 int PAGE_SHIFT ;
 int get_total_mem (struct mv64x60_mc_pdata*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mv64x60_init_csrows(struct mem_ctl_info *mci,
    struct mv64x60_mc_pdata *pdata)
{
 struct csrow_info *csrow;
 struct dimm_info *dimm;

 u32 devtype;
 u32 ctl;

 get_total_mem(pdata);

 ctl = readl(pdata->mc_vbase + MV64X60_SDRAM_CONFIG);

 csrow = mci->csrows[0];
 dimm = csrow->channels[0]->dimm;

 dimm->nr_pages = pdata->total_mem >> PAGE_SHIFT;
 dimm->grain = 8;

 dimm->mtype = (ctl & MV64X60_SDRAM_REGISTERED) ? MEM_RDDR : MEM_DDR;

 devtype = (ctl >> 20) & 0x3;
 switch (devtype) {
 case 0x0:
  dimm->dtype = DEV_X32;
  break;
 case 0x2:
  dimm->dtype = DEV_X16;
  break;
 case 0x3:
  dimm->dtype = DEV_X4;
  break;
 default:
  dimm->dtype = DEV_UNKNOWN;
  break;
 }

 dimm->edac_mode = EDAC_SECDED;
}
