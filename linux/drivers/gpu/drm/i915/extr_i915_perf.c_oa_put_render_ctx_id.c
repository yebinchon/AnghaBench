
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int dummy; } ;
struct i915_perf_stream {int pinned_ctx; scalar_t__ specific_ctx_id_mask; int specific_ctx_id; struct drm_i915_private* dev_priv; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int INVALID_CTX_ID ;
 struct intel_context* fetch_and_zero (int *) ;
 int intel_context_unpin (struct intel_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void oa_put_render_ctx_id(struct i915_perf_stream *stream)
{
 struct drm_i915_private *dev_priv = stream->dev_priv;
 struct intel_context *ce;

 stream->specific_ctx_id = INVALID_CTX_ID;
 stream->specific_ctx_id_mask = 0;

 ce = fetch_and_zero(&stream->pinned_ctx);
 if (ce) {
  mutex_lock(&dev_priv->drm.struct_mutex);
  intel_context_unpin(ce);
  mutex_unlock(&dev_priv->drm.struct_mutex);
 }
}
