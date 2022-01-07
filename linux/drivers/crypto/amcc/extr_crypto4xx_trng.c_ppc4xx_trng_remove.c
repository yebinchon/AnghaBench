
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto4xx_device {int trng_base; } ;
struct crypto4xx_core_device {scalar_t__ trng; int device; struct crypto4xx_device* dev; } ;


 int devm_hwrng_unregister (int ,scalar_t__) ;
 int iounmap (int ) ;
 int kfree (scalar_t__) ;
 int ppc4xx_trng_enable (struct crypto4xx_device*,int) ;

void ppc4xx_trng_remove(struct crypto4xx_core_device *core_dev)
{
 if (core_dev && core_dev->trng) {
  struct crypto4xx_device *dev = core_dev->dev;

  devm_hwrng_unregister(core_dev->device, core_dev->trng);
  ppc4xx_trng_enable(dev, 0);
  iounmap(dev->trng_base);
  kfree(core_dev->trng);
 }
}
