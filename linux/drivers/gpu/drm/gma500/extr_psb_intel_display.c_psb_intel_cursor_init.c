
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gtt_range {scalar_t__ offset; } ;
struct gma_crtc {size_t pipe; struct gtt_range* cursor_gt; scalar_t__ cursor_addr; } ;
struct drm_psb_private {scalar_t__ stolen_base; TYPE_1__* ops; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ cursor_needs_phys; } ;


 int CURABASE ;
 int CURACNTR ;
 int CURBBASE ;
 int CURBCNTR ;
 int CURCBASE ;
 int CURCCNTR ;
 int PAGE_SIZE ;
 int REG_WRITE (int ,int ) ;
 struct gtt_range* psb_gtt_alloc_range (struct drm_device*,int,char*,int,int) ;

__attribute__((used)) static void psb_intel_cursor_init(struct drm_device *dev,
      struct gma_crtc *gma_crtc)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 u32 control[3] = { CURACNTR, CURBCNTR, CURCCNTR };
 u32 base[3] = { CURABASE, CURBBASE, CURCBASE };
 struct gtt_range *cursor_gt;

 if (dev_priv->ops->cursor_needs_phys) {



  cursor_gt = psb_gtt_alloc_range(dev, 4 * PAGE_SIZE, "cursor", 1,
      PAGE_SIZE);
  if (!cursor_gt) {
   gma_crtc->cursor_gt = ((void*)0);
   goto out;
  }
  gma_crtc->cursor_gt = cursor_gt;
  gma_crtc->cursor_addr = dev_priv->stolen_base +
       cursor_gt->offset;
 } else {
  gma_crtc->cursor_gt = ((void*)0);
 }

out:
 REG_WRITE(control[gma_crtc->pipe], 0);
 REG_WRITE(base[gma_crtc->pipe], 0);
}
