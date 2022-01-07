
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i915_gem_context {int pid; int name; TYPE_1__* vm; struct drm_i915_file_private* file_priv; } ;
struct drm_i915_file_private {int context_idr_lock; int context_idr; } ;
struct TYPE_5__ {int comm; } ;
struct TYPE_4__ {struct drm_i915_file_private* file; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PIDTYPE_PID ;
 TYPE_2__* current ;
 int fetch_and_zero (int *) ;
 int get_task_pid (TYPE_2__*,int ) ;
 int idr_alloc (int *,struct i915_gem_context*,int ,int ,int ) ;
 int kasprintf (int ,char*,int ,int ) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pid_nr (int ) ;
 int put_pid (int ) ;

__attribute__((used)) static int gem_context_register(struct i915_gem_context *ctx,
    struct drm_i915_file_private *fpriv)
{
 int ret;

 ctx->file_priv = fpriv;
 if (ctx->vm)
  ctx->vm->file = fpriv;

 ctx->pid = get_task_pid(current, PIDTYPE_PID);
 ctx->name = kasprintf(GFP_KERNEL, "%s[%d]",
         current->comm, pid_nr(ctx->pid));
 if (!ctx->name) {
  ret = -ENOMEM;
  goto err_pid;
 }


 mutex_lock(&fpriv->context_idr_lock);
 ret = idr_alloc(&fpriv->context_idr, ctx, 0, 0, GFP_KERNEL);
 mutex_unlock(&fpriv->context_idr_lock);
 if (ret >= 0)
  goto out;

 kfree(fetch_and_zero(&ctx->name));
err_pid:
 put_pid(fetch_and_zero(&ctx->pid));
out:
 return ret;
}
