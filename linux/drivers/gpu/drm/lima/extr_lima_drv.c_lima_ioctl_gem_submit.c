
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_submit {int nr_bos; int flags; int out_sync; int * in_sync; struct lima_ctx* ctx; struct lima_sched_task* task; void* lbos; struct lima_sched_task* bos; int pipe; int member_0; } ;
struct lima_sched_task {struct lima_sched_task* frame; } ;
struct lima_sched_pipe {size_t frame_size; int (* task_validate ) (struct lima_sched_pipe*,struct lima_sched_task*) ;int task_slab; } ;
struct lima_drm_priv {int ctx_mgr; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
struct lima_ctx {int dummy; } ;
struct drm_lima_gem_submit_bo {struct drm_lima_gem_submit_bo* frame; } ;
struct drm_lima_gem_submit {int nr_bos; int flags; size_t frame_size; int out_sync; int * in_sync; int pipe; int ctx; int frame; int bos; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LIMA_SUBMIT_FLAG_EXPLICIT_FENCE ;
 scalar_t__ copy_from_user (struct lima_sched_task*,int ,size_t) ;
 int kmem_cache_free (int ,struct lima_sched_task*) ;
 struct lima_sched_task* kmem_cache_zalloc (int ,int ) ;
 struct lima_sched_task* kvcalloc (int,int,int ) ;
 int kvfree (struct lima_sched_task*) ;
 struct lima_ctx* lima_ctx_get (int *,int ) ;
 int lima_ctx_put (struct lima_ctx*) ;
 int lima_gem_submit (struct drm_file*,struct lima_submit*) ;
 int lima_pipe_num ;
 int stub1 (struct lima_sched_pipe*,struct lima_sched_task*) ;
 struct lima_device* to_lima_dev (struct drm_device*) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int lima_ioctl_gem_submit(struct drm_device *dev, void *data, struct drm_file *file)
{
 struct drm_lima_gem_submit *args = data;
 struct lima_device *ldev = to_lima_dev(dev);
 struct lima_drm_priv *priv = file->driver_priv;
 struct drm_lima_gem_submit_bo *bos;
 struct lima_sched_pipe *pipe;
 struct lima_sched_task *task;
 struct lima_ctx *ctx;
 struct lima_submit submit = {0};
 size_t size;
 int err = 0;

 if (args->pipe >= lima_pipe_num || args->nr_bos == 0)
  return -EINVAL;

 if (args->flags & ~(LIMA_SUBMIT_FLAG_EXPLICIT_FENCE))
  return -EINVAL;

 pipe = ldev->pipe + args->pipe;
 if (args->frame_size != pipe->frame_size)
  return -EINVAL;

 bos = kvcalloc(args->nr_bos, sizeof(*submit.bos) + sizeof(*submit.lbos), GFP_KERNEL);
 if (!bos)
  return -ENOMEM;

 size = args->nr_bos * sizeof(*submit.bos);
 if (copy_from_user(bos, u64_to_user_ptr(args->bos), size)) {
  err = -EFAULT;
  goto out0;
 }

 task = kmem_cache_zalloc(pipe->task_slab, GFP_KERNEL);
 if (!task) {
  err = -ENOMEM;
  goto out0;
 }

 task->frame = task + 1;
 if (copy_from_user(task->frame, u64_to_user_ptr(args->frame), args->frame_size)) {
  err = -EFAULT;
  goto out1;
 }

 err = pipe->task_validate(pipe, task);
 if (err)
  goto out1;

 ctx = lima_ctx_get(&priv->ctx_mgr, args->ctx);
 if (!ctx) {
  err = -ENOENT;
  goto out1;
 }

 submit.pipe = args->pipe;
 submit.bos = bos;
 submit.lbos = (void *)bos + size;
 submit.nr_bos = args->nr_bos;
 submit.task = task;
 submit.ctx = ctx;
 submit.flags = args->flags;
 submit.in_sync[0] = args->in_sync[0];
 submit.in_sync[1] = args->in_sync[1];
 submit.out_sync = args->out_sync;

 err = lima_gem_submit(file, &submit);

 lima_ctx_put(ctx);
out1:
 if (err)
  kmem_cache_free(pipe->task_slab, task);
out0:
 kvfree(bos);
 return err;
}
