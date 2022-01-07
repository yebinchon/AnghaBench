
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dev; } ;
struct mem_ctl_info {int edac_cap; int * pdev; struct amd64_pvt* pvt_info; } ;
struct edac_mc_layer {int size; int is_virt_csrow; int type; } ;
struct amd64_umc {int dummy; } ;
struct amd64_pvt {unsigned int mc_node_id; int fam; scalar_t__ channel_count; struct amd64_pvt* umc; struct pci_dev* F3; TYPE_2__* csels; TYPE_1__* ops; } ;
struct amd64_family_type {int f2_id; int f1_id; int f6_id; int f0_id; } ;
struct TYPE_6__ {struct pci_dev* misc; } ;
struct TYPE_5__ {int b_cnt; } ;
struct TYPE_4__ {scalar_t__ (* early_channel_count ) (struct amd64_pvt*) ;} ;


 int ARRAY_SIZE (struct edac_mc_layer*) ;
 int EDAC_FLAG_NONE ;
 int EDAC_MC_LAYER_CHANNEL ;
 int EDAC_MC_LAYER_CHIP_SELECT ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amd64_edac_attr_groups ;
 int edac_dbg (int,char*) ;
 scalar_t__ edac_mc_add_mc_with_groups (struct mem_ctl_info*,int ) ;
 struct mem_ctl_info* edac_mc_alloc (unsigned int,int ,struct edac_mc_layer*,int ) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int free_mc_sibling_devs (struct amd64_pvt*) ;
 scalar_t__ init_csrows (struct mem_ctl_info*) ;
 struct amd64_pvt* kcalloc (int,int,int ) ;
 int kfree (struct amd64_pvt*) ;
 struct amd64_pvt* kzalloc (int,int ) ;
 TYPE_3__* node_to_amd_nb (unsigned int) ;
 int num_umcs ;
 struct amd64_family_type* per_family_init (struct amd64_pvt*) ;
 int read_mc_regs (struct amd64_pvt*) ;
 int reserve_mc_sibling_devs (struct amd64_pvt*,int ,int ) ;
 int setup_mci_misc_attrs (struct mem_ctl_info*,struct amd64_family_type*) ;
 scalar_t__ stub1 (struct amd64_pvt*) ;

__attribute__((used)) static int init_one_instance(unsigned int nid)
{
 struct pci_dev *F3 = node_to_amd_nb(nid)->misc;
 struct amd64_family_type *fam_type = ((void*)0);
 struct mem_ctl_info *mci = ((void*)0);
 struct edac_mc_layer layers[2];
 struct amd64_pvt *pvt = ((void*)0);
 u16 pci_id1, pci_id2;
 int err = 0, ret;

 ret = -ENOMEM;
 pvt = kzalloc(sizeof(struct amd64_pvt), GFP_KERNEL);
 if (!pvt)
  goto err_ret;

 pvt->mc_node_id = nid;
 pvt->F3 = F3;

 ret = -EINVAL;
 fam_type = per_family_init(pvt);
 if (!fam_type)
  goto err_free;

 if (pvt->fam >= 0x17) {
  pvt->umc = kcalloc(num_umcs, sizeof(struct amd64_umc), GFP_KERNEL);
  if (!pvt->umc) {
   ret = -ENOMEM;
   goto err_free;
  }

  pci_id1 = fam_type->f0_id;
  pci_id2 = fam_type->f6_id;
 } else {
  pci_id1 = fam_type->f1_id;
  pci_id2 = fam_type->f2_id;
 }

 err = reserve_mc_sibling_devs(pvt, pci_id1, pci_id2);
 if (err)
  goto err_post_init;

 read_mc_regs(pvt);






 ret = -EINVAL;
 pvt->channel_count = pvt->ops->early_channel_count(pvt);
 if (pvt->channel_count < 0)
  goto err_siblings;

 ret = -ENOMEM;
 layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
 layers[0].size = pvt->csels[0].b_cnt;
 layers[0].is_virt_csrow = 1;
 layers[1].type = EDAC_MC_LAYER_CHANNEL;
 if (pvt->fam >= 0x17)
  layers[1].size = num_umcs;
 else
  layers[1].size = 2;
 layers[1].is_virt_csrow = 0;

 mci = edac_mc_alloc(nid, ARRAY_SIZE(layers), layers, 0);
 if (!mci)
  goto err_siblings;

 mci->pvt_info = pvt;
 mci->pdev = &pvt->F3->dev;

 setup_mci_misc_attrs(mci, fam_type);

 if (init_csrows(mci))
  mci->edac_cap = EDAC_FLAG_NONE;

 ret = -ENODEV;
 if (edac_mc_add_mc_with_groups(mci, amd64_edac_attr_groups)) {
  edac_dbg(1, "failed edac_mc_add_mc()\n");
  goto err_add_mc;
 }

 return 0;

err_add_mc:
 edac_mc_free(mci);

err_siblings:
 free_mc_sibling_devs(pvt);

err_post_init:
 if (pvt->fam >= 0x17)
  kfree(pvt->umc);

err_free:
 kfree(pvt);

err_ret:
 return ret;
}
