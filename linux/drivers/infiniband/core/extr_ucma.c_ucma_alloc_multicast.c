
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_multicast {int list; int id; struct ucma_context* ctx; } ;
struct ucma_context {int mc_list; } ;


 int GFP_KERNEL ;
 int kfree (struct ucma_multicast*) ;
 struct ucma_multicast* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int multicast_table ;
 scalar_t__ xa_alloc (int *,int *,int *,int ,int ) ;
 int xa_limit_32b ;

__attribute__((used)) static struct ucma_multicast* ucma_alloc_multicast(struct ucma_context *ctx)
{
 struct ucma_multicast *mc;

 mc = kzalloc(sizeof(*mc), GFP_KERNEL);
 if (!mc)
  return ((void*)0);

 mc->ctx = ctx;
 if (xa_alloc(&multicast_table, &mc->id, ((void*)0), xa_limit_32b, GFP_KERNEL))
  goto error;

 list_add_tail(&mc->list, &ctx->mc_list);
 return mc;

error:
 kfree(mc);
 return ((void*)0);
}
