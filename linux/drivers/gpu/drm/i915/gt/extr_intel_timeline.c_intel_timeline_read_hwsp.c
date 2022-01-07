
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_timeline_cacheline {int vaddr; TYPE_1__* hwsp; } ;
struct intel_timeline {int mutex; scalar_t__ hwsp_offset; struct intel_timeline_cacheline* hwsp_cacheline; } ;
struct i915_request {struct intel_timeline* timeline; struct intel_timeline_cacheline* hwsp_cacheline; } ;
struct TYPE_2__ {int vma; } ;


 int CACHELINE_BITS ;
 int CACHELINE_BYTES ;
 int GEM_BUG_ON (int) ;
 int SINGLE_DEPTH_NESTING ;
 int cacheline_ref (struct intel_timeline_cacheline*,struct i915_request*) ;
 scalar_t__ i915_ggtt_offset (int ) ;
 int i915_request_completed (struct i915_request*) ;
 scalar_t__ likely (int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int ptr_unmask_bits (int ,int ) ;

int intel_timeline_read_hwsp(struct i915_request *from,
        struct i915_request *to,
        u32 *hwsp)
{
 struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
 struct intel_timeline *tl = from->timeline;
 int err;

 GEM_BUG_ON(to->timeline == tl);

 mutex_lock_nested(&tl->mutex, SINGLE_DEPTH_NESTING);
 err = i915_request_completed(from);
 if (!err)
  err = cacheline_ref(cl, to);
 if (!err) {
  if (likely(cl == tl->hwsp_cacheline)) {
   *hwsp = tl->hwsp_offset;
  } else {
   *hwsp = i915_ggtt_offset(cl->hwsp->vma) +
    ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
    CACHELINE_BYTES;
  }
 }
 mutex_unlock(&tl->mutex);

 return err;
}
