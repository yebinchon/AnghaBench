
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; int mc_idx; struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int grain; int mtype; int edac_mode; int dtype; } ;
struct csrow_info {int first_page; int last_page; TYPE_1__** channels; } ;
typedef enum mem_type { ____Placeholder_mem_type } mem_type ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int DEV_UNKNOWN ;
 scalar_t__ I82443BXGX_DRAMC ;
 scalar_t__ I82443BXGX_DRB ;
 int PAGE_SHIFT ;
 int edac_dbg (int,char*,int ,int,int,...) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void i82443bxgx_init_csrows(struct mem_ctl_info *mci,
    struct pci_dev *pdev,
    enum edac_type edac_mode,
    enum mem_type mtype)
{
 struct csrow_info *csrow;
 struct dimm_info *dimm;
 int index;
 u8 drbar, dramc;
 u32 row_base, row_high_limit, row_high_limit_last;

 pci_read_config_byte(pdev, I82443BXGX_DRAMC, &dramc);
 row_high_limit_last = 0;
 for (index = 0; index < mci->nr_csrows; index++) {
  csrow = mci->csrows[index];
  dimm = csrow->channels[0]->dimm;

  pci_read_config_byte(pdev, I82443BXGX_DRB + index, &drbar);
  edac_dbg(1, "MC%d: Row=%d DRB = %#0x\n",
    mci->mc_idx, index, drbar);
  row_high_limit = ((u32) drbar << 23);

  edac_dbg(1, "MC%d: Row=%d, Boundary Address=%#0x, Last = %#0x\n",
    mci->mc_idx, index, row_high_limit,
    row_high_limit_last);


  if (row_high_limit_last && !row_high_limit)
   row_high_limit = 1UL << 31;


  if (row_high_limit == row_high_limit_last)
   continue;
  row_base = row_high_limit_last;
  csrow->first_page = row_base >> PAGE_SHIFT;
  csrow->last_page = (row_high_limit >> PAGE_SHIFT) - 1;
  dimm->nr_pages = csrow->last_page - csrow->first_page + 1;

  dimm->grain = 1 << 12;
  dimm->mtype = mtype;

  dimm->dtype = DEV_UNKNOWN;

  dimm->edac_mode = edac_mode;
  row_high_limit_last = row_high_limit;
 }
}
