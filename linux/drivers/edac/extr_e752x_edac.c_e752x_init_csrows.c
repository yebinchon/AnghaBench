
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct mem_ctl_info {int nr_csrows; int edac_cap; struct csrow_info** csrows; } ;
struct dimm_info {int nr_pages; int grain; int edac_mode; int dtype; int mtype; } ;
struct csrow_info {unsigned long first_page; int last_page; int nr_channels; TYPE_1__** channels; } ;
typedef enum edac_type { ____Placeholder_edac_type } edac_type ;
struct TYPE_2__ {struct dimm_info* dimm; } ;


 int DEV_X4 ;
 int DEV_X8 ;
 scalar_t__ E752X_DRA ;
 scalar_t__ E752X_DRB ;
 int E752X_DRC ;
 int EDAC_FLAG_S4ECD4ED ;
 int EDAC_FLAG_SECDED ;
 int EDAC_NONE ;
 int EDAC_S4ECD4ED ;
 int EDAC_SECDED ;
 int MEM_RDDR ;
 int PAGE_SHIFT ;
 scalar_t__ dual_channel_active (int ) ;
 int edac_dbg (int,char*,int,int) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 size_t remap_csrow_index (struct mem_ctl_info*,int) ;

__attribute__((used)) static void e752x_init_csrows(struct mem_ctl_info *mci, struct pci_dev *pdev,
   u16 ddrcsr)
{
 struct csrow_info *csrow;
 enum edac_type edac_mode;
 unsigned long last_cumul_size;
 int index, mem_dev, drc_chan;
 int drc_drbg;
 int drc_ddim;
 u8 value;
 u32 dra, drc, cumul_size, i, nr_pages;

 dra = 0;
 for (index = 0; index < 4; index++) {
  u8 dra_reg;
  pci_read_config_byte(pdev, E752X_DRA + index, &dra_reg);
  dra |= dra_reg << (index * 8);
 }
 pci_read_config_dword(pdev, E752X_DRC, &drc);
 drc_chan = dual_channel_active(ddrcsr) ? 1 : 0;
 drc_drbg = drc_chan + 1;
 drc_ddim = (drc >> 20) & 0x3;






 for (last_cumul_size = index = 0; index < mci->nr_csrows; index++) {

  mem_dev = (dra >> (index * 4 + 2)) & 0x3;
  csrow = mci->csrows[remap_csrow_index(mci, index)];

  mem_dev = (mem_dev == 2);
  pci_read_config_byte(pdev, E752X_DRB + index, &value);

  cumul_size = value << (25 + drc_drbg - PAGE_SHIFT);
  edac_dbg(3, "(%d) cumul_size 0x%x\n", index, cumul_size);
  if (cumul_size == last_cumul_size)
   continue;

  csrow->first_page = last_cumul_size;
  csrow->last_page = cumul_size - 1;
  nr_pages = cumul_size - last_cumul_size;
  last_cumul_size = cumul_size;





  if (drc_ddim) {
   if (drc_chan && mem_dev) {
    edac_mode = EDAC_S4ECD4ED;
    mci->edac_cap |= EDAC_FLAG_S4ECD4ED;
   } else {
    edac_mode = EDAC_SECDED;
    mci->edac_cap |= EDAC_FLAG_SECDED;
   }
  } else
   edac_mode = EDAC_NONE;
  for (i = 0; i < csrow->nr_channels; i++) {
   struct dimm_info *dimm = csrow->channels[i]->dimm;

   edac_dbg(3, "Initializing rank at (%i,%i)\n", index, i);
   dimm->nr_pages = nr_pages / csrow->nr_channels;
   dimm->grain = 1 << 12;
   dimm->mtype = MEM_RDDR;
   dimm->dtype = mem_dev ? DEV_X4 : DEV_X8;
   dimm->edac_mode = edac_mode;
  }
 }
}
