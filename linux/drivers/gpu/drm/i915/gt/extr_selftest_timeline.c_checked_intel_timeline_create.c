
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {scalar_t__* hwsp_seqno; scalar_t__ seqno; } ;
struct drm_i915_private {int gt; } ;


 int EINVAL ;
 struct intel_timeline* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct intel_timeline*) ;
 struct intel_timeline* intel_timeline_create (int *,int *) ;
 int intel_timeline_put (struct intel_timeline*) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct intel_timeline *
checked_intel_timeline_create(struct drm_i915_private *i915)
{
 struct intel_timeline *tl;

 tl = intel_timeline_create(&i915->gt, ((void*)0));
 if (IS_ERR(tl))
  return tl;

 if (*tl->hwsp_seqno != tl->seqno) {
  pr_err("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
         *tl->hwsp_seqno, tl->seqno);
  intel_timeline_put(tl);
  return ERR_PTR(-EINVAL);
 }

 return tl;
}
