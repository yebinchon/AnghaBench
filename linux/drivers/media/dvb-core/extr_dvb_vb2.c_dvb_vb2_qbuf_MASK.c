#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dvb_vb2_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  vb_q; } ;
struct dmx_buffer {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dmx_buffer*,int /*<<< orphan*/ *) ; 

int FUNC2(struct dvb_vb2_ctx *ctx, struct dmx_buffer *b)
{
	int ret;

	ret = FUNC1(&ctx->vb_q, b->index, b, NULL);
	if (ret) {
		FUNC0(1, "[%s] index=%d errno=%d\n", ctx->name,
			b->index, ret);
		return ret;
	}
	FUNC0(5, "[%s] index=%d\n", ctx->name, b->index);

	return 0;
}