
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_ctl_info {char* mod_name; int ctl_name; int * pdev; int * ctl_page_to_phys; int dev_name; void* edac_cap; void* edac_ctl_cap; int mtype_cap; struct i7core_pvt* pvt_info; } ;
struct TYPE_3__ {int dimm; int rank; int bank; int page; int col; scalar_t__ channel; } ;
struct i7core_pvt {int dclk_freq; TYPE_1__ inject; scalar_t__ enable_scrub; struct i7core_dev* i7core_dev; } ;
struct i7core_dev {struct mem_ctl_info* mci; TYPE_2__** pdev; int socket; } ;
struct edac_mc_layer {int is_virt_csrow; int size; int type; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (struct edac_mc_layer*) ;
 void* EDAC_FLAG_NONE ;
 int EDAC_MC_LAYER_CHANNEL ;
 int EDAC_MC_LAYER_SLOT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_DIMMS ;
 int MEM_FLAG_DDR3 ;
 int NUM_CHANS ;
 int edac_dbg (int ,char*,...) ;
 int edac_mc_add_mc_with_groups (struct mem_ctl_info*,int ) ;
 struct mem_ctl_info* edac_mc_alloc (int ,int ,struct edac_mc_layer*,int) ;
 int edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int enable_sdram_scrub_setting (struct mem_ctl_info*) ;
 int get_dclk_freq () ;
 int get_dimm_config (struct mem_ctl_info*) ;
 scalar_t__ i7core_create_sysfs_devices (struct mem_ctl_info*) ;
 int i7core_dev_groups ;
 int i7core_pci_ctl_create (struct i7core_pvt*) ;
 int kasprintf (int ,char*,int ) ;
 int kfree (int ) ;
 int mci_bind_devs (struct mem_ctl_info*,struct i7core_dev*) ;
 int memset (struct i7core_pvt*,int ,int) ;
 int pci_name (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i7core_register_mci(struct i7core_dev *i7core_dev)
{
 struct mem_ctl_info *mci;
 struct i7core_pvt *pvt;
 int rc;
 struct edac_mc_layer layers[2];



 layers[0].type = EDAC_MC_LAYER_CHANNEL;
 layers[0].size = NUM_CHANS;
 layers[0].is_virt_csrow = 0;
 layers[1].type = EDAC_MC_LAYER_SLOT;
 layers[1].size = MAX_DIMMS;
 layers[1].is_virt_csrow = 1;
 mci = edac_mc_alloc(i7core_dev->socket, ARRAY_SIZE(layers), layers,
       sizeof(*pvt));
 if (unlikely(!mci))
  return -ENOMEM;

 edac_dbg(0, "MC: mci = %p, dev = %p\n", mci, &i7core_dev->pdev[0]->dev);

 pvt = mci->pvt_info;
 memset(pvt, 0, sizeof(*pvt));


 pvt->i7core_dev = i7core_dev;
 i7core_dev->mci = mci;






 mci->mtype_cap = MEM_FLAG_DDR3;
 mci->edac_ctl_cap = EDAC_FLAG_NONE;
 mci->edac_cap = EDAC_FLAG_NONE;
 mci->mod_name = "i7core_edac.c";

 mci->ctl_name = kasprintf(GFP_KERNEL, "i7 core #%d", i7core_dev->socket);
 if (!mci->ctl_name) {
  rc = -ENOMEM;
  goto fail1;
 }

 mci->dev_name = pci_name(i7core_dev->pdev[0]);
 mci->ctl_page_to_phys = ((void*)0);


 rc = mci_bind_devs(mci, i7core_dev);
 if (unlikely(rc < 0))
  goto fail0;



 get_dimm_config(mci);

 mci->pdev = &i7core_dev->pdev[0]->dev;


 if (pvt->enable_scrub)
  enable_sdram_scrub_setting(mci);


 if (unlikely(edac_mc_add_mc_with_groups(mci, i7core_dev_groups))) {
  edac_dbg(0, "MC: failed edac_mc_add_mc()\n");




  rc = -EINVAL;
  goto fail0;
 }
 if (i7core_create_sysfs_devices(mci)) {
  edac_dbg(0, "MC: failed to create sysfs nodes\n");
  edac_mc_del_mc(mci->pdev);
  rc = -EINVAL;
  goto fail0;
 }


 pvt->inject.channel = 0;
 pvt->inject.dimm = -1;
 pvt->inject.rank = -1;
 pvt->inject.bank = -1;
 pvt->inject.page = -1;
 pvt->inject.col = -1;


 i7core_pci_ctl_create(pvt);


 pvt->dclk_freq = get_dclk_freq();

 return 0;

fail0:
 kfree(mci->ctl_name);

fail1:
 edac_mc_free(mci);
 i7core_dev->mci = ((void*)0);
 return rc;
}
