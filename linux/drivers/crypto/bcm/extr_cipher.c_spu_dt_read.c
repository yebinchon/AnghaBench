
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_type_subtype {int subtype; int type; } ;
struct spu_hw {int num_spu; int ** reg_vbase; int spu_subtype; int spu_type; int num_chan; } ;
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct spu_hw spu; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int MAX_SPUS ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int * devm_ioremap_resource (struct device*,struct resource*) ;
 TYPE_1__ iproc_priv ;
 int of_count_phandle_with_args (struct device_node*,char*,char*) ;
 struct spu_type_subtype* of_device_get_match_data (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static int spu_dt_read(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct spu_hw *spu = &iproc_priv.spu;
 struct resource *spu_ctrl_regs;
 const struct spu_type_subtype *matched_spu_type;
 struct device_node *dn = pdev->dev.of_node;
 int err, i;


 spu->num_chan = of_count_phandle_with_args(dn, "mboxes", "#mbox-cells");

 matched_spu_type = of_device_get_match_data(dev);
 if (!matched_spu_type) {
  dev_err(&pdev->dev, "Failed to match device\n");
  return -ENODEV;
 }

 spu->spu_type = matched_spu_type->type;
 spu->spu_subtype = matched_spu_type->subtype;

 i = 0;
 for (i = 0; (i < MAX_SPUS) && ((spu_ctrl_regs =
  platform_get_resource(pdev, IORESOURCE_MEM, i)) != ((void*)0)); i++) {

  spu->reg_vbase[i] = devm_ioremap_resource(dev, spu_ctrl_regs);
  if (IS_ERR(spu->reg_vbase[i])) {
   err = PTR_ERR(spu->reg_vbase[i]);
   dev_err(&pdev->dev, "Failed to map registers: %d\n",
    err);
   spu->reg_vbase[i] = ((void*)0);
   return err;
  }
 }
 spu->num_spu = i;
 dev_dbg(dev, "Device has %d SPUs", spu->num_spu);

 return 0;
}
