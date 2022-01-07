
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_file {int ctx_list; } ;
struct ucma_context {int list; int id; struct ucma_file* file; int mc_list; int comp; int ref; int close_work; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int) ;
 int ctx_table ;
 int init_completion (int *) ;
 int kfree (struct ucma_context*) ;
 struct ucma_context* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int ucma_close_id ;
 scalar_t__ xa_alloc (int *,int *,struct ucma_context*,int ,int ) ;
 int xa_limit_32b ;

__attribute__((used)) static struct ucma_context *ucma_alloc_ctx(struct ucma_file *file)
{
 struct ucma_context *ctx;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 INIT_WORK(&ctx->close_work, ucma_close_id);
 atomic_set(&ctx->ref, 1);
 init_completion(&ctx->comp);
 INIT_LIST_HEAD(&ctx->mc_list);
 ctx->file = file;

 if (xa_alloc(&ctx_table, &ctx->id, ctx, xa_limit_32b, GFP_KERNEL))
  goto error;

 list_add_tail(&ctx->list, &file->ctx_list);
 return ctx;

error:
 kfree(ctx);
 return ((void*)0);
}
