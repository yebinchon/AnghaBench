
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int bus; } ;
struct device {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* pm; } ;
struct TYPE_3__ {int (* runtime_resume ) (struct device*) ;} ;


 int VGA_SWITCHEROO_ON ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_wakeup_bus (int ) ;
 int stub1 (struct device*) ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int vga_switcheroo_power_switch (struct pci_dev*,int ) ;
 int vgasr_mutex ;

__attribute__((used)) static int vga_switcheroo_runtime_resume(struct device *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev);
 int ret;

 mutex_lock(&vgasr_mutex);
 vga_switcheroo_power_switch(pdev, VGA_SWITCHEROO_ON);
 mutex_unlock(&vgasr_mutex);
 pci_wakeup_bus(pdev->bus);
 ret = dev->bus->pm->runtime_resume(dev);
 if (ret)
  return ret;

 return 0;
}
