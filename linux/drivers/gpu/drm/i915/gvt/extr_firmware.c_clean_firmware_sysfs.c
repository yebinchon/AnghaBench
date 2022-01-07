
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct intel_gvt {TYPE_2__* dev_priv; } ;
struct TYPE_7__ {int private; } ;
struct TYPE_5__ {struct pci_dev* pdev; } ;
struct TYPE_6__ {TYPE_1__ drm; } ;


 int device_remove_bin_file (int *,TYPE_3__*) ;
 TYPE_3__ firmware_attr ;
 int vfree (int ) ;

__attribute__((used)) static void clean_firmware_sysfs(struct intel_gvt *gvt)
{
 struct pci_dev *pdev = gvt->dev_priv->drm.pdev;

 device_remove_bin_file(&pdev->dev, &firmware_attr);
 vfree(firmware_attr.private);
}
