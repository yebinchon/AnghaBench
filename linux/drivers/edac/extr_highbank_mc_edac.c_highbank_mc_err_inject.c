
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mem_ctl_info {struct hb_mc_drvdata* pvt_info; } ;
struct hb_mc_drvdata {scalar_t__ mc_err_base; } ;


 scalar_t__ HB_DDR_ECC_OPT ;
 int HB_DDR_ECC_OPT_FWC ;
 int HB_DDR_ECC_OPT_MODE_MASK ;
 int HB_DDR_ECC_OPT_XOR_SHIFT ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void highbank_mc_err_inject(struct mem_ctl_info *mci, u8 synd)
{
 struct hb_mc_drvdata *pdata = mci->pvt_info;
 u32 reg;

 reg = readl(pdata->mc_err_base + HB_DDR_ECC_OPT);
 reg &= HB_DDR_ECC_OPT_MODE_MASK;
 reg |= (synd << HB_DDR_ECC_OPT_XOR_SHIFT) | HB_DDR_ECC_OPT_FWC;
 writel(reg, pdata->mc_err_base + HB_DDR_ECC_OPT);
}
