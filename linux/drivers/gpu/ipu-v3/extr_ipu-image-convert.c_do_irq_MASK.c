#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipuv3_channel {int dummy; } ;
struct ipu_image_tile {scalar_t__ offset; int /*<<< orphan*/  v_off; int /*<<< orphan*/  u_off; } ;
struct ipu_image_convert_run {int /*<<< orphan*/  list; scalar_t__ status; struct ipu_image_convert_ctx* ctx; } ;
struct TYPE_4__ {scalar_t__ phys0; } ;
struct ipu_image_convert_image {TYPE_2__ base; struct ipu_image_tile* tile; TYPE_1__* fmt; } ;
struct ipu_image_convert_ctx {size_t next_tile; size_t num_tiles; unsigned int* out_tile_map; int cur_buf_num; int /*<<< orphan*/  double_buffering; scalar_t__ aborting; int /*<<< orphan*/  rot_mode; struct ipu_image_convert_image out; struct ipu_image_convert_image in; struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int /*<<< orphan*/ * current_run; int /*<<< orphan*/  done_q; struct ipuv3_channel* in_chan; struct ipuv3_channel* out_chan; struct ipuv3_channel* rotation_out_chan; int /*<<< orphan*/  irqlock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {scalar_t__ planar; } ;

/* Variables and functions */
 scalar_t__ EIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct ipu_image_convert_run*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_image_convert_run*) ; 
 scalar_t__ FUNC2 (struct ipu_image_convert_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipuv3_channel*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ipuv3_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipuv3_channel*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ipu_image_convert_chan*) ; 

__attribute__((used)) static irqreturn_t FUNC10(struct ipu_image_convert_run *run)
{
	struct ipu_image_convert_ctx *ctx = run->ctx;
	struct ipu_image_convert_chan *chan = ctx->chan;
	struct ipu_image_tile *src_tile, *dst_tile;
	struct ipu_image_convert_image *s_image = &ctx->in;
	struct ipu_image_convert_image *d_image = &ctx->out;
	struct ipuv3_channel *outch;
	unsigned int dst_idx;

	FUNC8(&chan->irqlock);

	outch = FUNC6(ctx->rot_mode) ?
		chan->rotation_out_chan : chan->out_chan;

	/*
	 * It is difficult to stop the channel DMA before the channels
	 * enter the paused state. Without double-buffering the channels
	 * are always in a paused state when the EOF irq occurs, so it
	 * is safe to stop the channels now. For double-buffering we
	 * just ignore the abort until the operation completes, when it
	 * is safe to shut down.
	 */
	if (ctx->aborting && !ctx->double_buffering) {
		FUNC1(run);
		run->status = -EIO;
		goto done;
	}

	if (ctx->next_tile == ctx->num_tiles) {
		/*
		 * the conversion is complete
		 */
		FUNC1(run);
		run->status = 0;
		goto done;
	}

	/*
	 * not done, place the next tile buffers.
	 */
	if (!ctx->double_buffering) {
		if (FUNC2(ctx)) {
			FUNC1(run);
			FUNC0(run, ctx->next_tile);
		} else {
			src_tile = &s_image->tile[ctx->next_tile];
			dst_idx = ctx->out_tile_map[ctx->next_tile];
			dst_tile = &d_image->tile[dst_idx];

			FUNC3(chan->in_chan, 0,
					     s_image->base.phys0 +
					     src_tile->offset);
			FUNC3(outch, 0,
					     d_image->base.phys0 +
					     dst_tile->offset);
			if (s_image->fmt->planar)
				FUNC4(chan->in_chan,
							src_tile->u_off,
							src_tile->v_off);
			if (d_image->fmt->planar)
				FUNC4(outch,
							dst_tile->u_off,
							dst_tile->v_off);

			FUNC5(chan->in_chan, 0);
			FUNC5(outch, 0);
		}
	} else if (ctx->next_tile < ctx->num_tiles - 1) {

		src_tile = &s_image->tile[ctx->next_tile + 1];
		dst_idx = ctx->out_tile_map[ctx->next_tile + 1];
		dst_tile = &d_image->tile[dst_idx];

		FUNC3(chan->in_chan, ctx->cur_buf_num,
				     s_image->base.phys0 + src_tile->offset);
		FUNC3(outch, ctx->cur_buf_num,
				     d_image->base.phys0 + dst_tile->offset);

		FUNC5(chan->in_chan, ctx->cur_buf_num);
		FUNC5(outch, ctx->cur_buf_num);

		ctx->cur_buf_num ^= 1;
	}

	ctx->next_tile++;
	return IRQ_HANDLED;
done:
	FUNC7(&run->list, &chan->done_q);
	chan->current_run = NULL;
	FUNC9(chan);
	return IRQ_WAKE_THREAD;
}