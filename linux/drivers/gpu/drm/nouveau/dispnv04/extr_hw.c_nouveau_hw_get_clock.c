
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nvkm_pll_vals {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
typedef enum nvbios_pll_type { ____Placeholder_nvbios_pll_type } nvbios_pll_type ;
struct TYPE_2__ {int device; int bus; } ;


 int CHIPSET_NFORCE ;
 int CHIPSET_NFORCE2 ;
 int PLL_MEMORY ;
 int nouveau_hw_get_pllvals (struct drm_device*,int,struct nvkm_pll_vals*) ;
 int nouveau_hw_pllvals_to_clk (struct nvkm_pll_vals*) ;
 int pci_domain_nr (int ) ;
 int pci_get_domain_bus_and_slot (int,int ,int) ;
 int pci_read_config_dword (int ,int,int*) ;

int
nouveau_hw_get_clock(struct drm_device *dev, enum nvbios_pll_type plltype)
{
 struct nvkm_pll_vals pllvals;
 int ret;
 int domain;

 domain = pci_domain_nr(dev->pdev->bus);

 if (plltype == PLL_MEMORY &&
     (dev->pdev->device & 0x0ff0) == CHIPSET_NFORCE) {
  uint32_t mpllP;
  pci_read_config_dword(pci_get_domain_bus_and_slot(domain, 0, 3),
          0x6c, &mpllP);
  mpllP = (mpllP >> 8) & 0xf;
  if (!mpllP)
   mpllP = 4;

  return 400000 / mpllP;
 } else
 if (plltype == PLL_MEMORY &&
     (dev->pdev->device & 0xff0) == CHIPSET_NFORCE2) {
  uint32_t clock;

  pci_read_config_dword(pci_get_domain_bus_and_slot(domain, 0, 5),
          0x4c, &clock);
  return clock / 1000;
 }

 ret = nouveau_hw_get_pllvals(dev, plltype, &pllvals);
 if (ret)
  return ret;

 return nouveau_hw_pllvals_to_clk(&pllvals);
}
