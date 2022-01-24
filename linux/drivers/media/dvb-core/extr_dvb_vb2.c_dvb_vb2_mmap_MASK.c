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
struct vm_area_struct {int dummy; } ;
struct dvb_vb2_ctx {int /*<<< orphan*/  name; int /*<<< orphan*/  vb_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

int FUNC2(struct dvb_vb2_ctx *ctx, struct vm_area_struct *vma)
{
	int ret;

	ret = FUNC1(&ctx->vb_q, vma);
	if (ret) {
		FUNC0(1, "[%s] errno=%d\n", ctx->name, ret);
		return ret;
	}
	FUNC0(3, "[%s] ret=%d\n", ctx->name, ret);

	return 0;
}