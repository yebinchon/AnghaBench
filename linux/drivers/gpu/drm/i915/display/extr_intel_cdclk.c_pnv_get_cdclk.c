
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct intel_cdclk_state {int cdclk; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int DRM_ERROR (char*,int) ;
 int GCFGC ;






 int GC_DISPLAY_CLOCK_MASK ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;

__attribute__((used)) static void pnv_get_cdclk(struct drm_i915_private *dev_priv,
     struct intel_cdclk_state *cdclk_state)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 u16 gcfgc = 0;

 pci_read_config_word(pdev, GCFGC, &gcfgc);

 switch (gcfgc & GC_DISPLAY_CLOCK_MASK) {
 case 130:
  cdclk_state->cdclk = 266667;
  break;
 case 129:
  cdclk_state->cdclk = 333333;
  break;
 case 128:
  cdclk_state->cdclk = 444444;
  break;
 case 131:
  cdclk_state->cdclk = 200000;
  break;
 default:
  DRM_ERROR("Unknown pnv display core clock 0x%04x\n", gcfgc);

 case 133:
  cdclk_state->cdclk = 133333;
  break;
 case 132:
  cdclk_state->cdclk = 166667;
  break;
 }
}
