
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct psb_mmu_driver {int needs_tlbflush; int * msvdx_mmu_invaldc; struct drm_device* dev; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int PSB_CR_BIF_CTRL ;
 int PSB_RSGX32 (int ) ;
 int PSB_WSGX32 (int,int ) ;
 int _PSB_CB_CTRL_INVALDC ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int wmb () ;

__attribute__((used)) static void psb_mmu_flush_pd_locked(struct psb_mmu_driver *driver, int force)
{
 struct drm_device *dev = driver->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (atomic_read(&driver->needs_tlbflush) || force) {
  uint32_t val = PSB_RSGX32(PSB_CR_BIF_CTRL);
  PSB_WSGX32(val | _PSB_CB_CTRL_INVALDC, PSB_CR_BIF_CTRL);


  wmb();
  PSB_WSGX32(val & ~_PSB_CB_CTRL_INVALDC, PSB_CR_BIF_CTRL);
  (void)PSB_RSGX32(PSB_CR_BIF_CTRL);
  if (driver->msvdx_mmu_invaldc)
   atomic_set(driver->msvdx_mmu_invaldc, 1);
 }
 atomic_set(&driver->needs_tlbflush, 0);
}
