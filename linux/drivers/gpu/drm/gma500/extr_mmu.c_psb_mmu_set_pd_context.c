
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct psb_mmu_pd {int hw_context; TYPE_1__* driver; int p; } ;
struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {int sem; struct drm_device* dev; } ;


 int PAGE_SHIFT ;
 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE0 ;
 scalar_t__ PSB_CR_BIF_DIR_LIST_BASE1 ;
 int PSB_WSGX32 (int,scalar_t__) ;
 int down_write (int *) ;
 int page_to_pfn (int ) ;
 int psb_mmu_flush_pd_locked (TYPE_1__*,int) ;
 int up_write (int *) ;
 int wmb () ;

void psb_mmu_set_pd_context(struct psb_mmu_pd *pd, int hw_context)
{
 struct drm_device *dev = pd->driver->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 uint32_t offset = (hw_context == 0) ? PSB_CR_BIF_DIR_LIST_BASE0 :
     PSB_CR_BIF_DIR_LIST_BASE1 + hw_context * 4;

 down_write(&pd->driver->sem);
 PSB_WSGX32(page_to_pfn(pd->p) << PAGE_SHIFT, offset);
 wmb();
 psb_mmu_flush_pd_locked(pd->driver, 1);
 pd->hw_context = hw_context;
 up_write(&pd->driver->sem);

}
