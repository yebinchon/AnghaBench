
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ppc4xx_edac_pdata {int dcr_host; } ;
struct mem_ctl_info {int edac_cap; int nr_csrows; struct csrow_info** csrows; struct ppc4xx_edac_pdata* pvt_info; } ;
struct dimm_info {int nr_pages; int grain; int mtype; int dtype; int edac_mode; } ;
struct csrow_info {int nr_channels; TYPE_1__** channels; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
typedef enum dev_type { ____Placeholder_dev_type } dev_type ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int EDAC_EC ;
 int EDAC_FLAG_EC ;
 int EDAC_FLAG_SECDED ;
 int EDAC_NONE ;
 int EDAC_SECDED ;
 int EINVAL ;
 int KERN_ERR ;
 int SDRAM_MBCF_BE_ENABLE ;
 int SDRAM_MBCF_BE_MASK ;
 int SDRAM_MBCF_SZ_DECODE (int) ;
 int SDRAM_MBCF_SZ_MASK ;
 int SDRAM_MBCF_SZ_TO_PAGES (int) ;
 int SDRAM_MBXCF (int) ;
 int mfsdram (int *,int ) ;
 int ppc4xx_edac_get_dtype (int) ;
 int ppc4xx_edac_get_mtype (int) ;
 int ppc4xx_edac_mc_printk (int ,struct mem_ctl_info*,char*,int,int ) ;

__attribute__((used)) static int ppc4xx_edac_init_csrows(struct mem_ctl_info *mci, u32 mcopt1)
{
 const struct ppc4xx_edac_pdata *pdata = mci->pvt_info;
 int status = 0;
 enum mem_type mtype;
 enum dev_type dtype;
 enum edac_type edac_mode;
 int row, j;
 u32 mbxcf, size, nr_pages;



 mtype = ppc4xx_edac_get_mtype(mcopt1);
 dtype = ppc4xx_edac_get_dtype(mcopt1);



 if (mci->edac_cap & EDAC_FLAG_SECDED)
  edac_mode = EDAC_SECDED;
 else if (mci->edac_cap & EDAC_FLAG_EC)
  edac_mode = EDAC_EC;
 else
  edac_mode = EDAC_NONE;






 for (row = 0; row < mci->nr_csrows; row++) {
  struct csrow_info *csi = mci->csrows[row];






  mbxcf = mfsdram(&pdata->dcr_host, SDRAM_MBXCF(row));

  if ((mbxcf & SDRAM_MBCF_BE_MASK) != SDRAM_MBCF_BE_ENABLE)
   continue;



  size = mbxcf & SDRAM_MBCF_SZ_MASK;

  switch (size) {
  case 132:
  case 128:
  case 138:
  case 134:
  case 130:
  case 139:
  case 136:
  case 131:
  case 137:
  case 135:
  case 133:
  case 129:
   nr_pages = SDRAM_MBCF_SZ_TO_PAGES(size);
   break;
  default:
   ppc4xx_edac_mc_printk(KERN_ERR, mci,
           "Unrecognized memory bank %d "
           "size 0x%08x\n",
           row, SDRAM_MBCF_SZ_DECODE(size));
   status = -EINVAL;
   goto done;
  }
  for (j = 0; j < csi->nr_channels; j++) {
   struct dimm_info *dimm = csi->channels[j]->dimm;

   dimm->nr_pages = nr_pages / csi->nr_channels;
   dimm->grain = 1;

   dimm->mtype = mtype;
   dimm->dtype = dtype;

   dimm->edac_mode = edac_mode;
  }
 }

 done:
 return status;
}
