
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PSB_CR_CLKGATECTL ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int,int ) ;

__attribute__((used)) static void psb_init_pm(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;

 u32 gating = PSB_RSGX32(PSB_CR_CLKGATECTL);
 gating &= ~3;
 gating |= 1;
 PSB_WSGX32(gating, PSB_CR_CLKGATECTL);
 PSB_RSGX32(PSB_CR_CLKGATECTL);
}
