
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 int vga_switcheroo_lock_ddc (struct pci_dev*) ;
 int vga_switcheroo_unlock_ddc (struct pci_dev*) ;

struct edid *drm_get_edid_switcheroo(struct drm_connector *connector,
         struct i2c_adapter *adapter)
{
 struct pci_dev *pdev = connector->dev->pdev;
 struct edid *edid;

 vga_switcheroo_lock_ddc(pdev);
 edid = drm_get_edid(connector, adapter);
 vga_switcheroo_unlock_ddc(pdev);

 return edid;
}
