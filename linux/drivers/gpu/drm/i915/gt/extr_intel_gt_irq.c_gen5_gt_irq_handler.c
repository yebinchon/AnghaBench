
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_gt {int ** engine_class; } ;


 int GT_RENDER_USER_INTERRUPT ;
 int ILK_BSD_USER_INTERRUPT ;
 size_t RENDER_CLASS ;
 size_t VIDEO_DECODE_CLASS ;
 int intel_engine_breadcrumbs_irq (int ) ;

void gen5_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
{
 if (gt_iir & GT_RENDER_USER_INTERRUPT)
  intel_engine_breadcrumbs_irq(gt->engine_class[RENDER_CLASS][0]);
 if (gt_iir & ILK_BSD_USER_INTERRUPT)
  intel_engine_breadcrumbs_irq(gt->engine_class[VIDEO_DECODE_CLASS][0]);
}
