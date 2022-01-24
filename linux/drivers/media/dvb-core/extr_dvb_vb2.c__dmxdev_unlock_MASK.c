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
struct vb2_queue {int dummy; } ;
struct dvb_vb2_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct dvb_vb2_ctx* FUNC3 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC4(struct vb2_queue *vq)
{
	struct dvb_vb2_ctx *ctx = FUNC3(vq);

	if (FUNC1(&ctx->mutex))
		FUNC2(&ctx->mutex);
	FUNC0(3, "[%s]\n", ctx->name);
}