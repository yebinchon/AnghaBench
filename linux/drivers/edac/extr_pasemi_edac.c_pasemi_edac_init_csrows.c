
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int edac_mode; int dtype; int mtype; int grain; } ;
struct csrow_info {int first_page; int last_page; scalar_t__ page_mask; TYPE_1__** channels; } ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int DEV_UNKNOWN ;
 int EINVAL ;
 int KERN_ERR ;
 scalar_t__ MCDRAM_RANKCFG ;
 int MCDRAM_RANKCFG_EN ;
 int MCDRAM_RANKCFG_TYPE_SIZE_M ;
 int MCDRAM_RANKCFG_TYPE_SIZE_S ;
 int MEM_DDR ;
 int PAGE_SHIFT ;
 int PASEMI_EDAC_ERROR_GRAIN ;
 int edac_mc_printk (struct mem_ctl_info*,int ,char*,int) ;
 int last_page_in_mmc ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static int pasemi_edac_init_csrows(struct mem_ctl_info *mci,
       struct pci_dev *pdev,
       enum edac_type edac_mode)
{
 struct csrow_info *csrow;
 struct dimm_info *dimm;
 u32 rankcfg;
 int index;

 for (index = 0; index < mci->nr_csrows; index++) {
  csrow = mci->csrows[index];
  dimm = csrow->channels[0]->dimm;

  pci_read_config_dword(pdev,
          MCDRAM_RANKCFG + (index * 12),
          &rankcfg);

  if (!(rankcfg & MCDRAM_RANKCFG_EN))
   continue;

  switch ((rankcfg & MCDRAM_RANKCFG_TYPE_SIZE_M) >>
   MCDRAM_RANKCFG_TYPE_SIZE_S) {
  case 0:
   dimm->nr_pages = 128 << (20 - PAGE_SHIFT);
   break;
  case 1:
   dimm->nr_pages = 256 << (20 - PAGE_SHIFT);
   break;
  case 2:
  case 3:
   dimm->nr_pages = 512 << (20 - PAGE_SHIFT);
   break;
  case 4:
   dimm->nr_pages = 1024 << (20 - PAGE_SHIFT);
   break;
  case 5:
   dimm->nr_pages = 2048 << (20 - PAGE_SHIFT);
   break;
  default:
   edac_mc_printk(mci, KERN_ERR,
    "Unrecognized Rank Config. rankcfg=%u\n",
    rankcfg);
   return -EINVAL;
  }

  csrow->first_page = last_page_in_mmc;
  csrow->last_page = csrow->first_page + dimm->nr_pages - 1;
  last_page_in_mmc += dimm->nr_pages;
  csrow->page_mask = 0;
  dimm->grain = PASEMI_EDAC_ERROR_GRAIN;
  dimm->mtype = MEM_DDR;
  dimm->dtype = DEV_UNKNOWN;
  dimm->edac_mode = edac_mode;
 }
 return 0;
}
