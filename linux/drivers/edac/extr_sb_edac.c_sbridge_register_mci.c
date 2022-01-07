
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; void* get_width; void* interleave_pkg; void* interleave_list; void* max_sad; void* dram_attr; void* interleave_mode; void* sad_limit; int * rir_limit; void* get_ha; void* get_node_id; void* get_memory_type; struct edac_mc_layer* dram_rule; void* get_tohm; void* get_tolm; int rankcfgr; } ;
struct sbridge_pvt {struct sbridge_dev* sbridge_dev; TYPE_1__ info; } ;
struct sbridge_dev {struct mem_ctl_info* mci; int dom; int source_id; int mc; struct pci_dev** pdev; } ;
struct pci_dev {int dev; } ;
struct mem_ctl_info {void* ctl_name; int * pdev; int * ctl_page_to_phys; int dev_name; int mod_name; void* edac_cap; void* edac_ctl_cap; int mtype_cap; struct sbridge_pvt* pvt_info; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int type; } ;
typedef enum type { ____Placeholder_type } type ;


 void* ARRAY_SIZE (struct edac_mc_layer*) ;

 void* EDAC_FLAG_NONE ;
 int EDAC_MC_LAYER_CHANNEL ;
 int EDAC_MC_LAYER_SLOT ;
 int EDAC_MOD_STR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;

 int IB_RANK_CFG_A ;


 int KNL_MAX_CHANNELS ;
 int MAX_DIMMS ;
 int MEM_FLAG_DDR3 ;
 int MEM_FLAG_DDR4 ;
 int NUM_CHANNELS ;

 int SB_RANK_CFG_A ;
 void* broadwell_get_width ;
 int broadwell_mci_bind_devs (struct mem_ctl_info*,struct sbridge_dev*) ;
 void* dram_attr ;
 void* dram_attr_knl ;
 int edac_dbg (int ,char*,...) ;
 int edac_mc_add_mc (struct mem_ctl_info*) ;
 struct mem_ctl_info* edac_mc_alloc (int ,void*,struct edac_mc_layer*,int) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int get_dimm_config (struct mem_ctl_info*) ;
 int get_memory_layout (struct mem_ctl_info*) ;
 void* get_memory_type ;
 void* get_node_id ;
 int get_source_id (struct mem_ctl_info*) ;
 void* haswell_get_memory_type ;
 void* haswell_get_node_id ;
 void* haswell_get_tohm ;
 void* haswell_get_tolm ;
 int haswell_mci_bind_devs (struct mem_ctl_info*,struct sbridge_dev*) ;
 void* haswell_rir_limit ;
 struct edac_mc_layer* ibridge_dram_rule ;
 void* ibridge_get_ha ;
 void* ibridge_get_tohm ;
 void* ibridge_get_tolm ;
 void* ibridge_get_width ;
 void* ibridge_interleave_list ;
 void* ibridge_interleave_pkg ;
 int ibridge_mci_bind_devs (struct mem_ctl_info*,struct sbridge_dev*) ;
 void* interleave_mode ;
 void* kasprintf (int ,char*,int ,int ) ;
 int kfree (void*) ;
 struct edac_mc_layer* knl_dram_rule ;
 void* knl_get_ha ;
 void* knl_get_memory_type ;
 void* knl_get_node_id ;
 void* knl_get_tohm ;
 void* knl_get_tolm ;
 void* knl_get_width ;
 void* knl_interleave_list ;
 void* knl_interleave_mode ;
 int knl_mci_bind_devs (struct mem_ctl_info*,struct sbridge_dev*) ;
 void* knl_sad_limit ;
 int memset (struct sbridge_pvt*,int ,int) ;
 int pci_name (struct pci_dev*) ;
 void* rir_limit ;
 void* sad_limit ;
 struct edac_mc_layer* sbridge_dram_rule ;
 void* sbridge_get_ha ;
 void* sbridge_get_tohm ;
 void* sbridge_get_tolm ;
 void* sbridge_get_width ;
 void* sbridge_interleave_list ;
 void* sbridge_interleave_pkg ;
 int sbridge_mci_bind_devs (struct mem_ctl_info*,struct sbridge_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sbridge_register_mci(struct sbridge_dev *sbridge_dev, enum type type)
{
 struct mem_ctl_info *mci;
 struct edac_mc_layer layers[2];
 struct sbridge_pvt *pvt;
 struct pci_dev *pdev = sbridge_dev->pdev[0];
 int rc;


 layers[0].type = EDAC_MC_LAYER_CHANNEL;
 layers[0].size = type == 129 ?
  KNL_MAX_CHANNELS : NUM_CHANNELS;
 layers[0].is_virt_csrow = 0;
 layers[1].type = EDAC_MC_LAYER_SLOT;
 layers[1].size = type == 129 ? 1 : MAX_DIMMS;
 layers[1].is_virt_csrow = 1;
 mci = edac_mc_alloc(sbridge_dev->mc, ARRAY_SIZE(layers), layers,
       sizeof(*pvt));

 if (unlikely(!mci))
  return -ENOMEM;

 edac_dbg(0, "MC: mci = %p, dev = %p\n",
   mci, &pdev->dev);

 pvt = mci->pvt_info;
 memset(pvt, 0, sizeof(*pvt));


 pvt->sbridge_dev = sbridge_dev;
 sbridge_dev->mci = mci;

 mci->mtype_cap = type == 129 ?
  MEM_FLAG_DDR4 : MEM_FLAG_DDR3;
 mci->edac_ctl_cap = EDAC_FLAG_NONE;
 mci->edac_cap = EDAC_FLAG_NONE;
 mci->mod_name = EDAC_MOD_STR;
 mci->dev_name = pci_name(pdev);
 mci->ctl_page_to_phys = ((void*)0);

 pvt->info.type = type;
 switch (type) {
 case 130:
  pvt->info.rankcfgr = IB_RANK_CFG_A;
  pvt->info.get_tolm = ibridge_get_tolm;
  pvt->info.get_tohm = ibridge_get_tohm;
  pvt->info.dram_rule = ibridge_dram_rule;
  pvt->info.get_memory_type = get_memory_type;
  pvt->info.get_node_id = get_node_id;
  pvt->info.get_ha = ibridge_get_ha;
  pvt->info.rir_limit = rir_limit;
  pvt->info.sad_limit = sad_limit;
  pvt->info.interleave_mode = interleave_mode;
  pvt->info.dram_attr = dram_attr;
  pvt->info.max_sad = ARRAY_SIZE(ibridge_dram_rule);
  pvt->info.interleave_list = ibridge_interleave_list;
  pvt->info.interleave_pkg = ibridge_interleave_pkg;
  pvt->info.get_width = ibridge_get_width;


  rc = ibridge_mci_bind_devs(mci, sbridge_dev);
  if (unlikely(rc < 0))
   goto fail0;
  get_source_id(mci);
  mci->ctl_name = kasprintf(GFP_KERNEL, "Ivy Bridge SrcID#%d_Ha#%d",
   pvt->sbridge_dev->source_id, pvt->sbridge_dev->dom);
  break;
 case 128:
  pvt->info.rankcfgr = SB_RANK_CFG_A;
  pvt->info.get_tolm = sbridge_get_tolm;
  pvt->info.get_tohm = sbridge_get_tohm;
  pvt->info.dram_rule = sbridge_dram_rule;
  pvt->info.get_memory_type = get_memory_type;
  pvt->info.get_node_id = get_node_id;
  pvt->info.get_ha = sbridge_get_ha;
  pvt->info.rir_limit = rir_limit;
  pvt->info.sad_limit = sad_limit;
  pvt->info.interleave_mode = interleave_mode;
  pvt->info.dram_attr = dram_attr;
  pvt->info.max_sad = ARRAY_SIZE(sbridge_dram_rule);
  pvt->info.interleave_list = sbridge_interleave_list;
  pvt->info.interleave_pkg = sbridge_interleave_pkg;
  pvt->info.get_width = sbridge_get_width;


  rc = sbridge_mci_bind_devs(mci, sbridge_dev);
  if (unlikely(rc < 0))
   goto fail0;
  get_source_id(mci);
  mci->ctl_name = kasprintf(GFP_KERNEL, "Sandy Bridge SrcID#%d_Ha#%d",
   pvt->sbridge_dev->source_id, pvt->sbridge_dev->dom);
  break;
 case 131:

  pvt->info.get_tolm = haswell_get_tolm;
  pvt->info.get_tohm = haswell_get_tohm;
  pvt->info.dram_rule = ibridge_dram_rule;
  pvt->info.get_memory_type = haswell_get_memory_type;
  pvt->info.get_node_id = haswell_get_node_id;
  pvt->info.get_ha = ibridge_get_ha;
  pvt->info.rir_limit = haswell_rir_limit;
  pvt->info.sad_limit = sad_limit;
  pvt->info.interleave_mode = interleave_mode;
  pvt->info.dram_attr = dram_attr;
  pvt->info.max_sad = ARRAY_SIZE(ibridge_dram_rule);
  pvt->info.interleave_list = ibridge_interleave_list;
  pvt->info.interleave_pkg = ibridge_interleave_pkg;
  pvt->info.get_width = ibridge_get_width;


  rc = haswell_mci_bind_devs(mci, sbridge_dev);
  if (unlikely(rc < 0))
   goto fail0;
  get_source_id(mci);
  mci->ctl_name = kasprintf(GFP_KERNEL, "Haswell SrcID#%d_Ha#%d",
   pvt->sbridge_dev->source_id, pvt->sbridge_dev->dom);
  break;
 case 132:

  pvt->info.get_tolm = haswell_get_tolm;
  pvt->info.get_tohm = haswell_get_tohm;
  pvt->info.dram_rule = ibridge_dram_rule;
  pvt->info.get_memory_type = haswell_get_memory_type;
  pvt->info.get_node_id = haswell_get_node_id;
  pvt->info.get_ha = ibridge_get_ha;
  pvt->info.rir_limit = haswell_rir_limit;
  pvt->info.sad_limit = sad_limit;
  pvt->info.interleave_mode = interleave_mode;
  pvt->info.dram_attr = dram_attr;
  pvt->info.max_sad = ARRAY_SIZE(ibridge_dram_rule);
  pvt->info.interleave_list = ibridge_interleave_list;
  pvt->info.interleave_pkg = ibridge_interleave_pkg;
  pvt->info.get_width = broadwell_get_width;


  rc = broadwell_mci_bind_devs(mci, sbridge_dev);
  if (unlikely(rc < 0))
   goto fail0;
  get_source_id(mci);
  mci->ctl_name = kasprintf(GFP_KERNEL, "Broadwell SrcID#%d_Ha#%d",
   pvt->sbridge_dev->source_id, pvt->sbridge_dev->dom);
  break;
 case 129:

  pvt->info.get_tolm = knl_get_tolm;
  pvt->info.get_tohm = knl_get_tohm;
  pvt->info.dram_rule = knl_dram_rule;
  pvt->info.get_memory_type = knl_get_memory_type;
  pvt->info.get_node_id = knl_get_node_id;
  pvt->info.get_ha = knl_get_ha;
  pvt->info.rir_limit = ((void*)0);
  pvt->info.sad_limit = knl_sad_limit;
  pvt->info.interleave_mode = knl_interleave_mode;
  pvt->info.dram_attr = dram_attr_knl;
  pvt->info.max_sad = ARRAY_SIZE(knl_dram_rule);
  pvt->info.interleave_list = knl_interleave_list;
  pvt->info.interleave_pkg = ibridge_interleave_pkg;
  pvt->info.get_width = knl_get_width;

  rc = knl_mci_bind_devs(mci, sbridge_dev);
  if (unlikely(rc < 0))
   goto fail0;
  get_source_id(mci);
  mci->ctl_name = kasprintf(GFP_KERNEL, "Knights Landing SrcID#%d_Ha#%d",
   pvt->sbridge_dev->source_id, pvt->sbridge_dev->dom);
  break;
 }

 if (!mci->ctl_name) {
  rc = -ENOMEM;
  goto fail0;
 }


 rc = get_dimm_config(mci);
 if (rc < 0) {
  edac_dbg(0, "MC: failed to get_dimm_config()\n");
  goto fail;
 }
 get_memory_layout(mci);


 mci->pdev = &pdev->dev;


 if (unlikely(edac_mc_add_mc(mci))) {
  edac_dbg(0, "MC: failed edac_mc_add_mc()\n");
  rc = -EINVAL;
  goto fail;
 }

 return 0;

fail:
 kfree(mci->ctl_name);
fail0:
 edac_mc_free(mci);
 sbridge_dev->mci = ((void*)0);
 return rc;
}
