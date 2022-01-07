
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_6__ {int * lock_ops; int * algo; struct intel_sdvo* algo_data; TYPE_2__ dev; int name; int class; int owner; } ;
struct intel_sdvo {TYPE_3__ ddc; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int I2C_CLASS_DDC ;
 int I2C_NAME_SIZE ;
 int THIS_MODULE ;
 scalar_t__ i2c_add_adapter (TYPE_3__*) ;
 int intel_sdvo_ddc_proxy ;
 int proxy_lock_ops ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static bool
intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
     struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;

 sdvo->ddc.owner = THIS_MODULE;
 sdvo->ddc.class = I2C_CLASS_DDC;
 snprintf(sdvo->ddc.name, I2C_NAME_SIZE, "SDVO DDC proxy");
 sdvo->ddc.dev.parent = &pdev->dev;
 sdvo->ddc.algo_data = sdvo;
 sdvo->ddc.algo = &intel_sdvo_ddc_proxy;
 sdvo->ddc.lock_ops = &proxy_lock_ops;

 return i2c_add_adapter(&sdvo->ddc) == 0;
}
