
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5l_recovery_ctx {scalar_t__ data_only_stripes; scalar_t__ data_parity_stripes; int meta_page; scalar_t__ seq; int pos; int cached_list; } ;
struct r5l_log {int last_checkpoint; scalar_t__ seq; int log_start; int next_checkpoint; scalar_t__ last_cp_seq; TYPE_1__* rdev; } ;
struct mddev {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {struct mddev* mddev; } ;


 int BLOCK_SECTORS ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int __free_page (int ) ;
 int alloc_page (int ) ;
 int kfree (struct r5l_recovery_ctx*) ;
 struct r5l_recovery_ctx* kzalloc (int,int ) ;
 int mdname (struct mddev*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,...) ;
 int r5c_recovery_flush_data_only_stripes (struct r5l_log*,struct r5l_recovery_ctx*) ;
 int r5c_recovery_flush_log (struct r5l_log*,struct r5l_recovery_ctx*) ;
 scalar_t__ r5c_recovery_rewrite_data_only_stripes (struct r5l_log*,struct r5l_recovery_ctx*) ;
 int r5l_log_write_empty_meta_block (struct r5l_log*,int ,int ) ;
 scalar_t__ r5l_recovery_allocate_ra_pool (struct r5l_log*,struct r5l_recovery_ctx*) ;
 int r5l_recovery_free_ra_pool (struct r5l_log*,struct r5l_recovery_ctx*) ;
 int r5l_ring_add (struct r5l_log*,int ,int ) ;
 int r5l_write_super (struct r5l_log*,int ) ;

__attribute__((used)) static int r5l_recovery_log(struct r5l_log *log)
{
 struct mddev *mddev = log->rdev->mddev;
 struct r5l_recovery_ctx *ctx;
 int ret;
 sector_t pos;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->pos = log->last_checkpoint;
 ctx->seq = log->last_cp_seq;
 INIT_LIST_HEAD(&ctx->cached_list);
 ctx->meta_page = alloc_page(GFP_KERNEL);

 if (!ctx->meta_page) {
  ret = -ENOMEM;
  goto meta_page;
 }

 if (r5l_recovery_allocate_ra_pool(log, ctx) != 0) {
  ret = -ENOMEM;
  goto ra_pool;
 }

 ret = r5c_recovery_flush_log(log, ctx);

 if (ret)
  goto error;

 pos = ctx->pos;
 ctx->seq += 10000;

 if ((ctx->data_only_stripes == 0) && (ctx->data_parity_stripes == 0))
  pr_info("md/raid:%s: starting from clean shutdown\n",
    mdname(mddev));
 else
  pr_info("md/raid:%s: recovering %d data-only stripes and %d data-parity stripes\n",
    mdname(mddev), ctx->data_only_stripes,
    ctx->data_parity_stripes);

 if (ctx->data_only_stripes == 0) {
  log->next_checkpoint = ctx->pos;
  r5l_log_write_empty_meta_block(log, ctx->pos, ctx->seq++);
  ctx->pos = r5l_ring_add(log, ctx->pos, BLOCK_SECTORS);
 } else if (r5c_recovery_rewrite_data_only_stripes(log, ctx)) {
  pr_err("md/raid:%s: failed to rewrite stripes to journal\n",
         mdname(mddev));
  ret = -EIO;
  goto error;
 }

 log->log_start = ctx->pos;
 log->seq = ctx->seq;
 log->last_checkpoint = pos;
 r5l_write_super(log, pos);

 r5c_recovery_flush_data_only_stripes(log, ctx);
 ret = 0;
error:
 r5l_recovery_free_ra_pool(log, ctx);
ra_pool:
 __free_page(ctx->meta_page);
meta_page:
 kfree(ctx);
 return ret;
}
