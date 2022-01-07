
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mem_ctl_info {struct dimm_info** dimms; struct axp_mc_drvdata* pvt_info; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int mtype; int dtype; } ;
struct axp_mc_drvdata {int width; int* cs_addr_sel; scalar_t__ base; } ;


 int DEV_X16 ;
 int DEV_X8 ;
 int EDAC_SECDED ;
 int MEM_DDR3 ;
 int MEM_RDDR3 ;
 int SDRAM_ADDR_CTRL_ADDR_SEL_MASK (unsigned int) ;
 scalar_t__ SDRAM_ADDR_CTRL_REG ;
 int SDRAM_ADDR_CTRL_SIZE_HIGH_MASK (unsigned int) ;
 int SDRAM_ADDR_CTRL_SIZE_HIGH_OFFSET (unsigned int) ;
 int SDRAM_ADDR_CTRL_SIZE_LOW_MASK (unsigned int) ;
 int SDRAM_ADDR_CTRL_SIZE_LOW_OFFSET (unsigned int) ;
 int SDRAM_ADDR_CTRL_STRUCT_MASK (unsigned int) ;
 int SDRAM_ADDR_CTRL_STRUCT_OFFSET (unsigned int) ;
 int SDRAM_CONFIG_BUS_WIDTH_MASK ;
 scalar_t__ SDRAM_CONFIG_REG ;
 int SDRAM_CONFIG_REGISTERED_MASK ;
 unsigned int SDRAM_NUM_CS ;
 int SDRAM_RANK_CTRL_EXIST_MASK (unsigned int) ;
 scalar_t__ SDRAM_RANK_CTRL_REG ;
 int readl (scalar_t__) ;

__attribute__((used)) static void axp_mc_read_config(struct mem_ctl_info *mci)
{
 struct axp_mc_drvdata *drvdata = mci->pvt_info;
 uint32_t config, addr_ctrl, rank_ctrl;
 unsigned int i, cs_struct, cs_size;
 struct dimm_info *dimm;

 config = readl(drvdata->base + SDRAM_CONFIG_REG);
 if (config & SDRAM_CONFIG_BUS_WIDTH_MASK)

  drvdata->width = 8;
 else

  drvdata->width = 4;

 addr_ctrl = readl(drvdata->base + SDRAM_ADDR_CTRL_REG);
 rank_ctrl = readl(drvdata->base + SDRAM_RANK_CTRL_REG);
 for (i = 0; i < SDRAM_NUM_CS; i++) {
  dimm = mci->dimms[i];

  if (!(rank_ctrl & SDRAM_RANK_CTRL_EXIST_MASK(i)))
   continue;

  drvdata->cs_addr_sel[i] =
   !!(addr_ctrl & SDRAM_ADDR_CTRL_ADDR_SEL_MASK(i));

  cs_struct = (addr_ctrl & SDRAM_ADDR_CTRL_STRUCT_MASK(i)) >> SDRAM_ADDR_CTRL_STRUCT_OFFSET(i);
  cs_size = ((addr_ctrl & SDRAM_ADDR_CTRL_SIZE_HIGH_MASK(i)) >> (SDRAM_ADDR_CTRL_SIZE_HIGH_OFFSET(i) - 2) |
       ((addr_ctrl & SDRAM_ADDR_CTRL_SIZE_LOW_MASK(i)) >> SDRAM_ADDR_CTRL_SIZE_LOW_OFFSET(i)));

  switch (cs_size) {
  case 0:
   dimm->nr_pages = 524288;
   break;
  case 1:
   dimm->nr_pages = 65536;
   break;
  case 2:
   dimm->nr_pages = 131072;
   break;
  case 3:
   dimm->nr_pages = 262144;
   break;
  case 4:
   dimm->nr_pages = 1048576;
   break;
  case 5:
   dimm->nr_pages = 2097152;
   break;
  }
  dimm->grain = 8;
  dimm->dtype = cs_struct ? DEV_X16 : DEV_X8;
  dimm->mtype = (config & SDRAM_CONFIG_REGISTERED_MASK) ?
   MEM_RDDR3 : MEM_DDR3;
  dimm->edac_mode = EDAC_SECDED;
 }
}
