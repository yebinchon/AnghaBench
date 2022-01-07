
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {unsigned long priv; int data_read; int data_present; int name; } ;
struct device_node {int dummy; } ;
struct crypto4xx_device {int * trng_base; } ;
struct crypto4xx_core_device {struct hwrng* trng; int device; struct crypto4xx_device* dev; } ;


 int GFP_KERNEL ;
 int KBUILD_MODNAME ;
 int PPC4XX_TRNG_CTRL ;
 int PPC4XX_TRNG_CTRL_DALM ;
 int dev_err (int ,char*,int) ;
 int devm_hwrng_register (int ,struct hwrng*) ;
 int iounmap (int *) ;
 int kfree (struct hwrng*) ;
 struct hwrng* kzalloc (int,int ) ;
 int of_device_is_available (struct device_node*) ;
 struct device_node* of_find_matching_node (int *,int ) ;
 int * of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;
 int out_le32 (int *,int ) ;
 int ppc4xx_trng_data_present ;
 int ppc4xx_trng_data_read ;
 int ppc4xx_trng_enable (struct crypto4xx_device*,int) ;
 int ppc4xx_trng_match ;

void ppc4xx_trng_probe(struct crypto4xx_core_device *core_dev)
{
 struct crypto4xx_device *dev = core_dev->dev;
 struct device_node *trng = ((void*)0);
 struct hwrng *rng = ((void*)0);
 int err;


 trng = of_find_matching_node(((void*)0), ppc4xx_trng_match);
 if (!trng || !of_device_is_available(trng)) {
  of_node_put(trng);
  return;
 }

 dev->trng_base = of_iomap(trng, 0);
 of_node_put(trng);
 if (!dev->trng_base)
  goto err_out;

 rng = kzalloc(sizeof(*rng), GFP_KERNEL);
 if (!rng)
  goto err_out;

 rng->name = KBUILD_MODNAME;
 rng->data_present = ppc4xx_trng_data_present;
 rng->data_read = ppc4xx_trng_data_read;
 rng->priv = (unsigned long) dev;
 core_dev->trng = rng;
 ppc4xx_trng_enable(dev, 1);
 out_le32(dev->trng_base + PPC4XX_TRNG_CTRL, PPC4XX_TRNG_CTRL_DALM);
 err = devm_hwrng_register(core_dev->device, core_dev->trng);
 if (err) {
  ppc4xx_trng_enable(dev, 0);
  dev_err(core_dev->device, "failed to register hwrng (%d).\n",
   err);
  goto err_out;
 }
 return;

err_out:
 iounmap(dev->trng_base);
 kfree(rng);
 dev->trng_base = ((void*)0);
 core_dev->trng = ((void*)0);
}
