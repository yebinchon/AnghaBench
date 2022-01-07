
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int mutex; int file_priv; } ;


 int EBADF ;
 int ERR_PTR (int ) ;
 int i915_gem_context_put (struct i915_gem_context*) ;
 int i915_gem_context_set_closed (struct i915_gem_context*) ;
 int lut_close (struct i915_gem_context*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_hw_id (struct i915_gem_context*) ;

__attribute__((used)) static void context_close(struct i915_gem_context *ctx)
{
 mutex_lock(&ctx->mutex);

 i915_gem_context_set_closed(ctx);
 ctx->file_priv = ERR_PTR(-EBADF);





 release_hw_id(ctx);






 lut_close(ctx);

 mutex_unlock(&ctx->mutex);
 i915_gem_context_put(ctx);
}
