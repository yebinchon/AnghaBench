
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipuv3_channel {int dummy; } ;
struct ipu_image_tile {scalar_t__ offset; int v_off; int u_off; } ;
struct ipu_image_convert_run {int list; scalar_t__ status; struct ipu_image_convert_ctx* ctx; } ;
struct TYPE_4__ {scalar_t__ phys0; } ;
struct ipu_image_convert_image {TYPE_2__ base; struct ipu_image_tile* tile; TYPE_1__* fmt; } ;
struct ipu_image_convert_ctx {size_t next_tile; size_t num_tiles; unsigned int* out_tile_map; int cur_buf_num; int double_buffering; scalar_t__ aborting; int rot_mode; struct ipu_image_convert_image out; struct ipu_image_convert_image in; struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int * current_run; int done_q; struct ipuv3_channel* in_chan; struct ipuv3_channel* out_chan; struct ipuv3_channel* rotation_out_chan; int irqlock; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ planar; } ;


 scalar_t__ EIO ;
 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int convert_start (struct ipu_image_convert_run*,size_t) ;
 int convert_stop (struct ipu_image_convert_run*) ;
 scalar_t__ ic_settings_changed (struct ipu_image_convert_ctx*) ;
 int ipu_cpmem_set_buffer (struct ipuv3_channel*,int,scalar_t__) ;
 int ipu_cpmem_set_uv_offset (struct ipuv3_channel*,int ,int ) ;
 int ipu_idmac_select_buffer (struct ipuv3_channel*,int) ;
 scalar_t__ ipu_rot_mode_is_irt (int ) ;
 int list_add_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int run_next (struct ipu_image_convert_chan*) ;

__attribute__((used)) static irqreturn_t do_irq(struct ipu_image_convert_run *run)
{
 struct ipu_image_convert_ctx *ctx = run->ctx;
 struct ipu_image_convert_chan *chan = ctx->chan;
 struct ipu_image_tile *src_tile, *dst_tile;
 struct ipu_image_convert_image *s_image = &ctx->in;
 struct ipu_image_convert_image *d_image = &ctx->out;
 struct ipuv3_channel *outch;
 unsigned int dst_idx;

 lockdep_assert_held(&chan->irqlock);

 outch = ipu_rot_mode_is_irt(ctx->rot_mode) ?
  chan->rotation_out_chan : chan->out_chan;
 if (ctx->aborting && !ctx->double_buffering) {
  convert_stop(run);
  run->status = -EIO;
  goto done;
 }

 if (ctx->next_tile == ctx->num_tiles) {



  convert_stop(run);
  run->status = 0;
  goto done;
 }




 if (!ctx->double_buffering) {
  if (ic_settings_changed(ctx)) {
   convert_stop(run);
   convert_start(run, ctx->next_tile);
  } else {
   src_tile = &s_image->tile[ctx->next_tile];
   dst_idx = ctx->out_tile_map[ctx->next_tile];
   dst_tile = &d_image->tile[dst_idx];

   ipu_cpmem_set_buffer(chan->in_chan, 0,
          s_image->base.phys0 +
          src_tile->offset);
   ipu_cpmem_set_buffer(outch, 0,
          d_image->base.phys0 +
          dst_tile->offset);
   if (s_image->fmt->planar)
    ipu_cpmem_set_uv_offset(chan->in_chan,
       src_tile->u_off,
       src_tile->v_off);
   if (d_image->fmt->planar)
    ipu_cpmem_set_uv_offset(outch,
       dst_tile->u_off,
       dst_tile->v_off);

   ipu_idmac_select_buffer(chan->in_chan, 0);
   ipu_idmac_select_buffer(outch, 0);
  }
 } else if (ctx->next_tile < ctx->num_tiles - 1) {

  src_tile = &s_image->tile[ctx->next_tile + 1];
  dst_idx = ctx->out_tile_map[ctx->next_tile + 1];
  dst_tile = &d_image->tile[dst_idx];

  ipu_cpmem_set_buffer(chan->in_chan, ctx->cur_buf_num,
         s_image->base.phys0 + src_tile->offset);
  ipu_cpmem_set_buffer(outch, ctx->cur_buf_num,
         d_image->base.phys0 + dst_tile->offset);

  ipu_idmac_select_buffer(chan->in_chan, ctx->cur_buf_num);
  ipu_idmac_select_buffer(outch, ctx->cur_buf_num);

  ctx->cur_buf_num ^= 1;
 }

 ctx->next_tile++;
 return IRQ_HANDLED;
done:
 list_add_tail(&run->list, &chan->done_q);
 chan->current_run = ((void*)0);
 run_next(chan);
 return IRQ_WAKE_THREAD;
}
