
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct perf_open_properties {scalar_t__ sample_flags; int ctx_handle; scalar_t__ single_context; } ;
struct i915_perf_stream {scalar_t__ sample_flags; TYPE_2__* ops; int link; struct i915_gem_context* ctx; struct drm_i915_private* dev_priv; } ;
struct i915_gem_context {int dummy; } ;
struct TYPE_3__ {int streams; } ;
struct drm_i915_private {int drm; TYPE_1__ perf; } ;
struct drm_i915_perf_open_param {int flags; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct TYPE_4__ {int (* destroy ) (struct i915_perf_stream*) ;} ;


 int CAP_SYS_ADMIN ;
 int DRM_DEBUG (char*,...) ;
 int EACCES ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I915_PERF_FLAG_DISABLED ;
 int I915_PERF_FLAG_FD_CLOEXEC ;
 int I915_PERF_FLAG_FD_NONBLOCK ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 unsigned long O_CLOEXEC ;
 unsigned long O_NONBLOCK ;
 scalar_t__ WARN_ON (int) ;
 int anon_inode_getfd (char*,int *,struct i915_perf_stream*,unsigned long) ;
 int capable (int ) ;
 int drm_dev_get (int *) ;
 int fops ;
 struct i915_gem_context* i915_gem_context_lookup (struct drm_i915_file_private*,int ) ;
 int i915_gem_context_put (struct i915_gem_context*) ;
 int i915_oa_stream_init (struct i915_perf_stream*,struct drm_i915_perf_open_param*,struct perf_open_properties*) ;
 int i915_perf_enable_locked (struct i915_perf_stream*) ;
 scalar_t__ i915_perf_stream_paranoid ;
 int kfree (struct i915_perf_stream*) ;
 struct i915_perf_stream* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int stub1 (struct i915_perf_stream*) ;

__attribute__((used)) static int
i915_perf_open_ioctl_locked(struct drm_i915_private *dev_priv,
       struct drm_i915_perf_open_param *param,
       struct perf_open_properties *props,
       struct drm_file *file)
{
 struct i915_gem_context *specific_ctx = ((void*)0);
 struct i915_perf_stream *stream = ((void*)0);
 unsigned long f_flags = 0;
 bool privileged_op = 1;
 int stream_fd;
 int ret;

 if (props->single_context) {
  u32 ctx_handle = props->ctx_handle;
  struct drm_i915_file_private *file_priv = file->driver_priv;

  specific_ctx = i915_gem_context_lookup(file_priv, ctx_handle);
  if (!specific_ctx) {
   DRM_DEBUG("Failed to look up context with ID %u for opening perf stream\n",
      ctx_handle);
   ret = -ENOENT;
   goto err;
  }
 }
 if (IS_HASWELL(dev_priv) && specific_ctx)
  privileged_op = 0;






 if (privileged_op &&
     i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
  DRM_DEBUG("Insufficient privileges to open system-wide i915 perf stream\n");
  ret = -EACCES;
  goto err_ctx;
 }

 stream = kzalloc(sizeof(*stream), GFP_KERNEL);
 if (!stream) {
  ret = -ENOMEM;
  goto err_ctx;
 }

 stream->dev_priv = dev_priv;
 stream->ctx = specific_ctx;

 ret = i915_oa_stream_init(stream, param, props);
 if (ret)
  goto err_alloc;





 if (WARN_ON(stream->sample_flags != props->sample_flags)) {
  ret = -ENODEV;
  goto err_flags;
 }

 list_add(&stream->link, &dev_priv->perf.streams);

 if (param->flags & I915_PERF_FLAG_FD_CLOEXEC)
  f_flags |= O_CLOEXEC;
 if (param->flags & I915_PERF_FLAG_FD_NONBLOCK)
  f_flags |= O_NONBLOCK;

 stream_fd = anon_inode_getfd("[i915_perf]", &fops, stream, f_flags);
 if (stream_fd < 0) {
  ret = stream_fd;
  goto err_open;
 }

 if (!(param->flags & I915_PERF_FLAG_DISABLED))
  i915_perf_enable_locked(stream);




 drm_dev_get(&dev_priv->drm);

 return stream_fd;

err_open:
 list_del(&stream->link);
err_flags:
 if (stream->ops->destroy)
  stream->ops->destroy(stream);
err_alloc:
 kfree(stream);
err_ctx:
 if (specific_ctx)
  i915_gem_context_put(specific_ctx);
err:
 return ret;
}
