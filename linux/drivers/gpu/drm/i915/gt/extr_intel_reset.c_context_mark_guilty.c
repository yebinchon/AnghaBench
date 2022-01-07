
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {unsigned long* hang_timestamp; int file_priv; int guilty_count; int name; } ;


 int ARRAY_SIZE (unsigned long*) ;
 scalar_t__ CONTEXT_FAST_HANG_JIFFIES ;
 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int client_mark_guilty (int ,struct i915_gem_context*) ;
 int i915_gem_context_is_bannable (struct i915_gem_context*) ;
 int i915_gem_context_is_recoverable (struct i915_gem_context*) ;
 int i915_gem_context_set_banned (struct i915_gem_context*) ;
 unsigned long jiffies ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;

__attribute__((used)) static bool context_mark_guilty(struct i915_gem_context *ctx)
{
 unsigned long prev_hang;
 bool banned;
 int i;

 atomic_inc(&ctx->guilty_count);


 if (!i915_gem_context_is_bannable(ctx))
  return 0;


 prev_hang = ctx->hang_timestamp[0];
 for (i = 0; i < ARRAY_SIZE(ctx->hang_timestamp) - 1; i++)
  ctx->hang_timestamp[i] = ctx->hang_timestamp[i + 1];
 ctx->hang_timestamp[i] = jiffies;


 banned = !i915_gem_context_is_recoverable(ctx);
 if (time_before(jiffies, prev_hang + CONTEXT_FAST_HANG_JIFFIES))
  banned = 1;
 if (banned) {
  DRM_DEBUG_DRIVER("context %s: guilty %d, banned\n",
     ctx->name, atomic_read(&ctx->guilty_count));
  i915_gem_context_set_banned(ctx);
 }

 if (!IS_ERR_OR_NULL(ctx->file_priv))
  client_mark_guilty(ctx->file_priv, ctx);

 return banned;
}
