
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int mtype_cap; int get_sdram_scrub_rate; int set_sdram_scrub_rate; int * ctl_page_to_phys; int dev_name; int ctl_name; int mod_name; int edac_cap; int edac_ctl_cap; struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int nbcap; int F3; scalar_t__ umc; } ;
struct amd64_family_type {int ctl_name; } ;


 int EDAC_FLAG_NONE ;
 int EDAC_FLAG_S4ECD4ED ;
 int EDAC_FLAG_SECDED ;
 int EDAC_MOD_STR ;
 int MEM_FLAG_DDR2 ;
 int MEM_FLAG_RDDR2 ;
 int NBCAP_CHIPKILL ;
 int NBCAP_SECDED ;
 int determine_edac_cap (struct amd64_pvt*) ;
 int f17h_determine_edac_ctl_cap (struct mem_ctl_info*,struct amd64_pvt*) ;
 int get_scrub_rate ;
 int pci_name (int ) ;
 int set_scrub_rate ;

__attribute__((used)) static void setup_mci_misc_attrs(struct mem_ctl_info *mci,
     struct amd64_family_type *fam)
{
 struct amd64_pvt *pvt = mci->pvt_info;

 mci->mtype_cap = MEM_FLAG_DDR2 | MEM_FLAG_RDDR2;
 mci->edac_ctl_cap = EDAC_FLAG_NONE;

 if (pvt->umc) {
  f17h_determine_edac_ctl_cap(mci, pvt);
 } else {
  if (pvt->nbcap & NBCAP_SECDED)
   mci->edac_ctl_cap |= EDAC_FLAG_SECDED;

  if (pvt->nbcap & NBCAP_CHIPKILL)
   mci->edac_ctl_cap |= EDAC_FLAG_S4ECD4ED;
 }

 mci->edac_cap = determine_edac_cap(pvt);
 mci->mod_name = EDAC_MOD_STR;
 mci->ctl_name = fam->ctl_name;
 mci->dev_name = pci_name(pvt->F3);
 mci->ctl_page_to_phys = ((void*)0);


 mci->set_sdram_scrub_rate = set_scrub_rate;
 mci->get_sdram_scrub_rate = get_scrub_rate;
}
