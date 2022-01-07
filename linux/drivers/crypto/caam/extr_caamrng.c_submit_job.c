
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct caam_rng_ctx {int current_buf; struct device* jrdev; struct buf_data* bufs; } ;
struct buf_data {int empty; int filled; int * hw_desc; } ;


 int atomic_inc (int *) ;
 int caam_jr_enqueue (struct device*,int *,int ,struct caam_rng_ctx*) ;
 int complete (int *) ;
 int dev_dbg (struct device*,char*,int) ;
 int init_completion (int *) ;
 int rng_done ;

__attribute__((used)) static inline int submit_job(struct caam_rng_ctx *ctx, int to_current)
{
 struct buf_data *bd = &ctx->bufs[!(to_current ^ ctx->current_buf)];
 struct device *jrdev = ctx->jrdev;
 u32 *desc = bd->hw_desc;
 int err;

 dev_dbg(jrdev, "submitting job %d\n", !(to_current ^ ctx->current_buf));
 init_completion(&bd->filled);
 err = caam_jr_enqueue(jrdev, desc, rng_done, ctx);
 if (err)
  complete(&bd->filled);
 else
  atomic_inc(&bd->empty);

 return err;
}
