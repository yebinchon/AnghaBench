
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int mc_idx; int edac_cap; struct dimm_info** dimms; struct bluefield_edac_priv* pvt_info; } ;
struct dimm_info {int nr_pages; int dtype; int grain; int mtype; int edac_mode; } ;
struct bluefield_edac_priv {int dimm_per_mc; int* dimm_ranks; } ;


 int DEV_UNKNOWN ;
 int DEV_X16 ;
 int DEV_X4 ;
 int DEV_X8 ;
 int EDAC_FLAG_NONE ;
 int EDAC_FLAG_SECDED ;
 int EDAC_SECDED ;
 int FIELD_GET (int ,int) ;
 int MEM_DDR4 ;
 int MEM_EMPTY ;
 int MEM_LRDDR4 ;
 int MEM_NVDIMM ;
 int MEM_RDDR4 ;
 int MLNX_SIP_GET_DIMM_INFO ;
 int MLXBF_DIMM_INFO__IS_LRDIMM ;
 int MLXBF_DIMM_INFO__IS_NVDIMM ;
 int MLXBF_DIMM_INFO__IS_RDIMM ;
 int MLXBF_DIMM_INFO__PACKAGE_X ;
 int MLXBF_DIMM_INFO__RANKS ;
 int MLXBF_DIMM_INFO__SIZE_GB ;
 int MLXBF_EDAC_ERROR_GRAIN ;
 int PAGE_SIZE ;
 int SZ_1G ;
 int smc_call1 (int ,int) ;

__attribute__((used)) static void bluefield_edac_init_dimms(struct mem_ctl_info *mci)
{
 struct bluefield_edac_priv *priv = mci->pvt_info;
 int mem_ctrl_idx = mci->mc_idx;
 struct dimm_info *dimm;
 u64 smc_info, smc_arg;
 int is_empty = 1, i;

 for (i = 0; i < priv->dimm_per_mc; i++) {
  dimm = mci->dimms[i];

  smc_arg = mem_ctrl_idx << 16 | i;
  smc_info = smc_call1(MLNX_SIP_GET_DIMM_INFO, smc_arg);

  if (!FIELD_GET(MLXBF_DIMM_INFO__SIZE_GB, smc_info)) {
   dimm->mtype = MEM_EMPTY;
   continue;
  }

  is_empty = 0;

  dimm->edac_mode = EDAC_SECDED;

  if (FIELD_GET(MLXBF_DIMM_INFO__IS_NVDIMM, smc_info))
   dimm->mtype = MEM_NVDIMM;
  else if (FIELD_GET(MLXBF_DIMM_INFO__IS_LRDIMM, smc_info))
   dimm->mtype = MEM_LRDDR4;
  else if (FIELD_GET(MLXBF_DIMM_INFO__IS_RDIMM, smc_info))
   dimm->mtype = MEM_RDDR4;
  else
   dimm->mtype = MEM_DDR4;

  dimm->nr_pages =
   FIELD_GET(MLXBF_DIMM_INFO__SIZE_GB, smc_info) *
   (SZ_1G / PAGE_SIZE);
  dimm->grain = MLXBF_EDAC_ERROR_GRAIN;


  switch (FIELD_GET(MLXBF_DIMM_INFO__PACKAGE_X, smc_info)) {
  case 4:
   dimm->dtype = DEV_X4;
   break;
  case 8:
   dimm->dtype = DEV_X8;
   break;
  case 16:
   dimm->dtype = DEV_X16;
   break;
  default:
   dimm->dtype = DEV_UNKNOWN;
  }

  priv->dimm_ranks[i] =
   FIELD_GET(MLXBF_DIMM_INFO__RANKS, smc_info);
 }

 if (is_empty)
  mci->edac_cap = EDAC_FLAG_NONE;
 else
  mci->edac_cap = EDAC_FLAG_SECDED;
}
