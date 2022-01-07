
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_device {scalar_t__ pipe; } ;
struct lima_ctx_mgr {int handles; } ;
struct lima_ctx {scalar_t__ context; int guilty; int refcnt; struct lima_device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct lima_ctx*) ;
 int kref_init (int *) ;
 struct lima_ctx* kzalloc (int,int ) ;
 int lima_pipe_num ;
 int lima_sched_context_fini (scalar_t__,scalar_t__) ;
 int lima_sched_context_init (scalar_t__,scalar_t__,int *) ;
 int xa_alloc (int *,int *,struct lima_ctx*,int ,int ) ;
 int xa_limit_32b ;

int lima_ctx_create(struct lima_device *dev, struct lima_ctx_mgr *mgr, u32 *id)
{
 struct lima_ctx *ctx;
 int i, err;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;
 ctx->dev = dev;
 kref_init(&ctx->refcnt);

 for (i = 0; i < lima_pipe_num; i++) {
  err = lima_sched_context_init(dev->pipe + i, ctx->context + i, &ctx->guilty);
  if (err)
   goto err_out0;
 }

 err = xa_alloc(&mgr->handles, id, ctx, xa_limit_32b, GFP_KERNEL);
 if (err < 0)
  goto err_out0;

 return 0;

err_out0:
 for (i--; i >= 0; i--)
  lima_sched_context_fini(dev->pipe + i, ctx->context + i);
 kfree(ctx);
 return err;
}
