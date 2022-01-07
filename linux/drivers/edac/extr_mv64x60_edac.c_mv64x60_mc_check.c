
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv64x60_mc_pdata {scalar_t__ mc_vbase; } ;
struct mem_ctl_info {int ctl_name; struct mv64x60_mc_pdata* pvt_info; } ;


 int HW_EVENT_ERR_CORRECTED ;
 int HW_EVENT_ERR_UNCORRECTED ;
 scalar_t__ MV64X60_SDRAM_ERR_ADDR ;
 scalar_t__ MV64X60_SDRAM_ERR_ECC_CALC ;
 scalar_t__ MV64X60_SDRAM_ERR_ECC_RCVD ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int,int,int,int ,int ,int,int ,char*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mv64x60_mc_check(struct mem_ctl_info *mci)
{
 struct mv64x60_mc_pdata *pdata = mci->pvt_info;
 u32 reg;
 u32 err_addr;
 u32 sdram_ecc;
 u32 comp_ecc;
 u32 syndrome;

 reg = readl(pdata->mc_vbase + MV64X60_SDRAM_ERR_ADDR);
 if (!reg)
  return;

 err_addr = reg & ~0x3;
 sdram_ecc = readl(pdata->mc_vbase + MV64X60_SDRAM_ERR_ECC_RCVD);
 comp_ecc = readl(pdata->mc_vbase + MV64X60_SDRAM_ERR_ECC_CALC);
 syndrome = sdram_ecc ^ comp_ecc;


 if (!(reg & 0x1))
  edac_mc_handle_error(HW_EVENT_ERR_CORRECTED, mci, 1,
         err_addr >> PAGE_SHIFT,
         err_addr & PAGE_MASK, syndrome,
         0, 0, -1,
         mci->ctl_name, "");
 else
  edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
         err_addr >> PAGE_SHIFT,
         err_addr & PAGE_MASK, 0,
         0, 0, -1,
         mci->ctl_name, "");


 writel(0, pdata->mc_vbase + MV64X60_SDRAM_ERR_ADDR);
}
