
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int dtype; int mtype; } ;
struct csrow_info {int first_page; int last_page; int page_mask; TYPE_1__** channels; } ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 scalar_t__ AMD76X_DRAM_MODE_STATUS ;
 scalar_t__ AMD76X_MEM_BASE_ADDR ;
 int BIT (int ) ;
 int DEV_UNKNOWN ;
 int DEV_X4 ;
 int MEM_RDDR ;
 int PAGE_SHIFT ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;

__attribute__((used)) static void amd76x_init_csrows(struct mem_ctl_info *mci, struct pci_dev *pdev,
   enum edac_type edac_mode)
{
 struct csrow_info *csrow;
 struct dimm_info *dimm;
 u32 mba, mba_base, mba_mask, dms;
 int index;

 for (index = 0; index < mci->nr_csrows; index++) {
  csrow = mci->csrows[index];
  dimm = csrow->channels[0]->dimm;


  pci_read_config_dword(pdev,
    AMD76X_MEM_BASE_ADDR + (index * 4), &mba);

  if (!(mba & BIT(0)))
   continue;

  mba_base = mba & 0xff800000UL;
  mba_mask = ((mba & 0xff80) << 16) | 0x7fffffUL;
  pci_read_config_dword(pdev, AMD76X_DRAM_MODE_STATUS, &dms);
  csrow->first_page = mba_base >> PAGE_SHIFT;
  dimm->nr_pages = (mba_mask + 1) >> PAGE_SHIFT;
  csrow->last_page = csrow->first_page + dimm->nr_pages - 1;
  csrow->page_mask = mba_mask >> PAGE_SHIFT;
  dimm->grain = dimm->nr_pages << PAGE_SHIFT;
  dimm->mtype = MEM_RDDR;
  dimm->dtype = ((dms >> index) & 0x1) ? DEV_X4 : DEV_UNKNOWN;
  dimm->edac_mode = edac_mode;
 }
}
