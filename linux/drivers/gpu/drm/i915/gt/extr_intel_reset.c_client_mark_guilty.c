
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int name; } ;
struct drm_i915_file_private {int ban_score; int hang_timestamp; } ;


 int DRM_DEBUG_DRIVER (char*,int ,unsigned int,int ) ;
 scalar_t__ I915_CLIENT_FAST_HANG_JIFFIES ;
 unsigned int I915_CLIENT_SCORE_CONTEXT_BAN ;
 scalar_t__ I915_CLIENT_SCORE_HANG_FAST ;
 int atomic_add (unsigned int,int *) ;
 int atomic_read (int *) ;
 scalar_t__ i915_gem_context_is_banned (struct i915_gem_context const*) ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;
 unsigned long xchg (int *,int ) ;

__attribute__((used)) static void client_mark_guilty(struct drm_i915_file_private *file_priv,
          const struct i915_gem_context *ctx)
{
 unsigned int score;
 unsigned long prev_hang;

 if (i915_gem_context_is_banned(ctx))
  score = I915_CLIENT_SCORE_CONTEXT_BAN;
 else
  score = 0;

 prev_hang = xchg(&file_priv->hang_timestamp, jiffies);
 if (time_before(jiffies, prev_hang + I915_CLIENT_FAST_HANG_JIFFIES))
  score += I915_CLIENT_SCORE_HANG_FAST;

 if (score) {
  atomic_add(score, &file_priv->ban_score);

  DRM_DEBUG_DRIVER("client %s: gained %u ban score, now %u\n",
     ctx->name, score,
     atomic_read(&file_priv->ban_score));
 }
}
