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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct dvb_vb2_ctx {unsigned long buf_siz; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 struct dvb_vb2_ctx* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vb2_buffer*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct vb2_buffer *vb)
{
	struct dvb_vb2_ctx *ctx = FUNC1(vb->vb2_queue);
	unsigned long size = ctx->buf_siz;

	if (FUNC2(vb, 0) < size) {
		FUNC0(1, "[%s] data will not fit into plane (%lu < %lu)\n",
			ctx->name, FUNC2(vb, 0), size);
		return -EINVAL;
	}

	FUNC3(vb, 0, size);
	FUNC0(3, "[%s]\n", ctx->name);

	return 0;
}