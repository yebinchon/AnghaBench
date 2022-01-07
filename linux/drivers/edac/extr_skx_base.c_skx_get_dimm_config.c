
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct skx_pvt {struct skx_imc* imc; } ;
struct skx_imc {int mc; TYPE_1__* chan; } ;
struct mem_ctl_info {int n_layers; int dimms; int layers; struct skx_pvt* pvt_info; } ;
struct dimm_info {int dummy; } ;
struct TYPE_2__ {int cdev; } ;


 struct dimm_info* EDAC_DIMM_PTR (int ,int ,int ,int,int,int ) ;
 int EDAC_MOD_STR ;
 int ENODEV ;
 scalar_t__ IS_DIMM_PRESENT (int ) ;
 scalar_t__ IS_NVDIMM_PRESENT (int ,int) ;
 int KERN_ERR ;
 int SKX_NUM_CHANNELS ;
 int SKX_NUM_DIMMS ;
 int nvdimm_count ;
 int pci_read_config_dword (int ,int,int *) ;
 int skx_check_ecc (int ) ;
 scalar_t__ skx_get_dimm_info (int ,int ,struct dimm_info*,struct skx_imc*,int,int) ;
 scalar_t__ skx_get_nvdimm_info (struct dimm_info*,struct skx_imc*,int,int,int ) ;
 int skx_printk (int ,char*,int ) ;

__attribute__((used)) static int skx_get_dimm_config(struct mem_ctl_info *mci)
{
 struct skx_pvt *pvt = mci->pvt_info;
 struct skx_imc *imc = pvt->imc;
 u32 mtr, amap, mcddrtcfg;
 struct dimm_info *dimm;
 int i, j;
 int ndimms;

 for (i = 0; i < SKX_NUM_CHANNELS; i++) {
  ndimms = 0;
  pci_read_config_dword(imc->chan[i].cdev, 0x8C, &amap);
  pci_read_config_dword(imc->chan[i].cdev, 0x400, &mcddrtcfg);
  for (j = 0; j < SKX_NUM_DIMMS; j++) {
   dimm = EDAC_DIMM_PTR(mci->layers, mci->dimms,
          mci->n_layers, i, j, 0);
   pci_read_config_dword(imc->chan[i].cdev,
           0x80 + 4 * j, &mtr);
   if (IS_DIMM_PRESENT(mtr)) {
    ndimms += skx_get_dimm_info(mtr, amap, dimm, imc, i, j);
   } else if (IS_NVDIMM_PRESENT(mcddrtcfg, j)) {
    ndimms += skx_get_nvdimm_info(dimm, imc, i, j,
             EDAC_MOD_STR);
    nvdimm_count++;
   }
  }
  if (ndimms && !skx_check_ecc(imc->chan[0].cdev)) {
   skx_printk(KERN_ERR, "ECC is disabled on imc %d\n", imc->mc);
   return -ENODEV;
  }
 }

 return 0;
}
