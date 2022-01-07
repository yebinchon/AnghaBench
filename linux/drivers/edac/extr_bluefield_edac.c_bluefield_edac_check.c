
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mem_ctl_info {scalar_t__ edac_cap; struct bluefield_edac_priv* pvt_info; } ;
struct bluefield_edac_priv {scalar_t__ emi_base; } ;


 scalar_t__ EDAC_FLAG_NONE ;
 scalar_t__ FIELD_GET (int ,scalar_t__) ;
 scalar_t__ MLXBF_ECC_CNT ;
 int MLXBF_ECC_CNT__DERR_CNT ;
 int MLXBF_ECC_CNT__SERR_CNT ;
 scalar_t__ MLXBF_ECC_ERR ;
 scalar_t__ MLXBF_ECC_ERR__DECC ;
 scalar_t__ MLXBF_ECC_ERR__SECC ;
 int bluefield_gather_report_ecc (struct mem_ctl_info*,scalar_t__,int) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void bluefield_edac_check(struct mem_ctl_info *mci)
{
 struct bluefield_edac_priv *priv = mci->pvt_info;
 u32 ecc_count, single_error_count, double_error_count, ecc_error = 0;





 if (mci->edac_cap == EDAC_FLAG_NONE)
  return;

 ecc_count = readl(priv->emi_base + MLXBF_ECC_CNT);
 single_error_count = FIELD_GET(MLXBF_ECC_CNT__SERR_CNT, ecc_count);
 double_error_count = FIELD_GET(MLXBF_ECC_CNT__DERR_CNT, ecc_count);

 if (single_error_count) {
  ecc_error |= MLXBF_ECC_ERR__SECC;

  bluefield_gather_report_ecc(mci, single_error_count, 1);
 }

 if (double_error_count) {
  ecc_error |= MLXBF_ECC_ERR__DECC;

  bluefield_gather_report_ecc(mci, double_error_count, 0);
 }


 if (ecc_count)
  writel(ecc_error, priv->emi_base + MLXBF_ECC_ERR);
}
