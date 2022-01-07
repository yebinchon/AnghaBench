
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int bus; } ;


 int CDV_MSG_WRITE32 (int ,int,int,int) ;
 int pci_domain_nr (int ) ;

__attribute__((used)) static void cdv_errata(struct drm_device *dev)
{
  CDV_MSG_WRITE32(pci_domain_nr(dev->pdev->bus), 3, 0x30, 0x08027108);
}
