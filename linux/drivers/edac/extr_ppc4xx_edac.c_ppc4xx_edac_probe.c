
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ppc4xx_edac_pdata {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mem_ctl_info {int pdev; } ;
struct edac_mc_layer {int is_virt_csrow; int size; int type; } ;
struct device_node {int dummy; } ;
typedef int dcr_host_t ;


 int ARRAY_SIZE (struct edac_mc_layer*) ;
 int EDAC_MC_LAYER_CHANNEL ;
 int EDAC_MC_LAYER_CHIP_SELECT ;
 scalar_t__ EDAC_OPSTATE_INT ;
 int ENODEV ;
 int ENOMEM ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_NOTICE ;
 int SDRAM_MCOPT1 ;
 int SDRAM_MCOPT1_MCHK_MASK ;
 int SDRAM_MCOPT1_MCHK_NON ;
 scalar_t__ edac_mc_add_mc (struct mem_ctl_info*) ;
 struct mem_ctl_info* edac_mc_alloc (int,int ,struct edac_mc_layer*,int) ;
 int edac_mc_del_mc (int ) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 scalar_t__ edac_op_state ;
 int mfsdram (int *,int ) ;
 int of_device_is_compatible (struct device_node const*,char*) ;
 int ppc4xx_edac_map_dcrs (struct device_node const*,int *) ;
 int ppc4xx_edac_mc_init (struct mem_ctl_info*,struct platform_device*,int *,int) ;
 int ppc4xx_edac_mc_printk (int ,struct mem_ctl_info*,char*) ;
 int ppc4xx_edac_nr_chans ;
 int ppc4xx_edac_nr_csrows ;
 int ppc4xx_edac_printk (int ,char*,...) ;
 int ppc4xx_edac_register_irq (struct platform_device*,struct mem_ctl_info*) ;

__attribute__((used)) static int ppc4xx_edac_probe(struct platform_device *op)
{
 int status = 0;
 u32 mcopt1, memcheck;
 dcr_host_t dcr_host;
 const struct device_node *np = op->dev.of_node;
 struct mem_ctl_info *mci = ((void*)0);
 struct edac_mc_layer layers[2];
 static int ppc4xx_edac_instance;






 if (!of_device_is_compatible(np, "ibm,sdram-405ex") &&
     !of_device_is_compatible(np, "ibm,sdram-405exr")) {
  ppc4xx_edac_printk(KERN_NOTICE,
       "Only the PPC405EX[r] is supported.\n");
  return -ENODEV;
 }






 status = ppc4xx_edac_map_dcrs(np, &dcr_host);

 if (status)
  return status;







 mcopt1 = mfsdram(&dcr_host, SDRAM_MCOPT1);
 memcheck = (mcopt1 & SDRAM_MCOPT1_MCHK_MASK);

 if (memcheck == SDRAM_MCOPT1_MCHK_NON) {
  ppc4xx_edac_printk(KERN_INFO, "%pOF: No ECC memory detected or "
       "ECC is disabled.\n", np);
  status = -ENODEV;
  goto done;
 }






 layers[0].type = EDAC_MC_LAYER_CHIP_SELECT;
 layers[0].size = ppc4xx_edac_nr_csrows;
 layers[0].is_virt_csrow = 1;
 layers[1].type = EDAC_MC_LAYER_CHANNEL;
 layers[1].size = ppc4xx_edac_nr_chans;
 layers[1].is_virt_csrow = 0;
 mci = edac_mc_alloc(ppc4xx_edac_instance, ARRAY_SIZE(layers), layers,
       sizeof(struct ppc4xx_edac_pdata));
 if (mci == ((void*)0)) {
  ppc4xx_edac_printk(KERN_ERR, "%pOF: "
       "Failed to allocate EDAC MC instance!\n",
       np);
  status = -ENOMEM;
  goto done;
 }

 status = ppc4xx_edac_mc_init(mci, op, &dcr_host, mcopt1);

 if (status) {
  ppc4xx_edac_mc_printk(KERN_ERR, mci,
          "Failed to initialize instance!\n");
  goto fail;
 }







 if (edac_mc_add_mc(mci)) {
  ppc4xx_edac_mc_printk(KERN_ERR, mci,
          "Failed to add instance!\n");
  status = -ENODEV;
  goto fail;
 }

 if (edac_op_state == EDAC_OPSTATE_INT) {
  status = ppc4xx_edac_register_irq(op, mci);

  if (status)
   goto fail1;
 }

 ppc4xx_edac_instance++;

 return 0;

 fail1:
 edac_mc_del_mc(mci->pdev);

 fail:
 edac_mc_free(mci);

 done:
 return status;
}
