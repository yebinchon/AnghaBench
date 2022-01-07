
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int head; int vaddr; int ptr_lock; int last_ctx_id; TYPE_1__* tails; int vma; } ;
struct i915_perf_stream {int pollin; TYPE_2__ oa_buffer; struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {void* offset; } ;


 int GEN8_OABUFFER ;
 int GEN8_OABUFFER_MEM_SELECT_GGTT ;
 int GEN8_OABUFFER_UDW ;
 int GEN8_OAHEADPTR ;
 int GEN8_OASTATUS ;
 int GEN8_OATAILPTR ;
 int GEN8_OATAILPTR_MASK ;
 int I915_WRITE (int ,int) ;
 int INVALID_CTX_ID ;
 void* INVALID_TAIL_PTR ;
 int OABUFFER_SIZE_16M ;
 int OA_BUFFER_SIZE ;
 int i915_ggtt_offset (int ) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
 unsigned long flags;

 spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);

 I915_WRITE(GEN8_OASTATUS, 0);
 I915_WRITE(GEN8_OAHEADPTR, gtt_offset);
 stream->oa_buffer.head = gtt_offset;

 I915_WRITE(GEN8_OABUFFER_UDW, 0);
 I915_WRITE(GEN8_OABUFFER, gtt_offset |
     OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
 I915_WRITE(GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);


 stream->oa_buffer.tails[0].offset = INVALID_TAIL_PTR;
 stream->oa_buffer.tails[1].offset = INVALID_TAIL_PTR;






 stream->oa_buffer.last_ctx_id = INVALID_CTX_ID;

 spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
 memset(stream->oa_buffer.vaddr, 0, OA_BUFFER_SIZE);





 stream->pollin = 0;
}
