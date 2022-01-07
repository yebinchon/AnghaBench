
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int quality; int read; int * name; } ;
struct u2fzero_device {TYPE_2__ hwrng; TYPE_1__* hdev; int * rng_name; } ;
struct TYPE_3__ {int dev; } ;


 int DRIVER_SHORT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_hwrng_register (int *,TYPE_2__*) ;
 int * devm_kasprintf (int *,int ,char*,int ,unsigned int) ;
 int u2fzero_rng_read ;

__attribute__((used)) static int u2fzero_init_hwrng(struct u2fzero_device *dev,
         unsigned int minor)
{
 dev->rng_name = devm_kasprintf(&dev->hdev->dev, GFP_KERNEL,
  "%s-rng%u", DRIVER_SHORT, minor);
 if (dev->rng_name == ((void*)0))
  return -ENOMEM;

 dev->hwrng.name = dev->rng_name;
 dev->hwrng.read = u2fzero_rng_read;
 dev->hwrng.quality = 1;

 return devm_hwrng_register(&dev->hdev->dev, &dev->hwrng);
}
