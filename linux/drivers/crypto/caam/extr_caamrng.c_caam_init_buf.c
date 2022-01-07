
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct caam_rng_ctx {int current_buf; struct buf_data* bufs; } ;
struct buf_data {int filled; int empty; } ;


 int BUF_EMPTY ;
 int atomic_set (int *,int ) ;
 int rng_create_job_desc (struct caam_rng_ctx*,int) ;
 int submit_job (struct caam_rng_ctx*,int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int caam_init_buf(struct caam_rng_ctx *ctx, int buf_id)
{
 struct buf_data *bd = &ctx->bufs[buf_id];
 int err;

 err = rng_create_job_desc(ctx, buf_id);
 if (err)
  return err;

 atomic_set(&bd->empty, BUF_EMPTY);
 submit_job(ctx, buf_id == ctx->current_buf);
 wait_for_completion(&bd->filled);

 return 0;
}
