
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int head; int vaddr; int ptr_lock; TYPE_1__* tails; int vma; } ;
struct i915_perf_stream {int pollin; TYPE_3__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct TYPE_5__ {scalar_t__ gen7_latched_oastatus1; } ;
struct drm_i915_private {TYPE_2__ perf; } ;
struct TYPE_4__ {void* offset; } ;


 int GEN7_OABUFFER ;
 int GEN7_OASTATUS1 ;
 int GEN7_OASTATUS2 ;
 int GEN7_OASTATUS2_MEM_SELECT_GGTT ;
 int I915_WRITE (int ,int) ;
 void* INVALID_TAIL_PTR ;
 int OABUFFER_SIZE_16M ;
 int OA_BUFFER_SIZE ;
 int i915_ggtt_offset (int ) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gen7_init_oa_buffer(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 unsigned long flags;

 spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);




 I915_WRITE(GEN7_OASTATUS2,
     gtt_offset | GEN7_OASTATUS2_MEM_SELECT_GGTT);
 stream->oa_buffer.head = gtt_offset;

 I915_WRITE(GEN7_OABUFFER, gtt_offset);

 I915_WRITE(GEN7_OASTATUS1, gtt_offset | OABUFFER_SIZE_16M);


 stream->oa_buffer.tails[0].offset = INVALID_TAIL_PTR;
 stream->oa_buffer.tails[1].offset = INVALID_TAIL_PTR;

 spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);





 dev_priv->perf.gen7_latched_oastatus1 = 0;
 memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);




 stream->pollin = 0;
}
