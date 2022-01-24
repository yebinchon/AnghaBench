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
struct file {int dummy; } ;
struct dvb_vb2_ctx {int /*<<< orphan*/  vb_q; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct file*,int /*<<< orphan*/ *) ; 

__poll_t FUNC2(struct dvb_vb2_ctx *ctx, struct file *file,
		      poll_table *wait)
{
	FUNC0(3, "[%s]\n", ctx->name);
	return FUNC1(&ctx->vb_q, file, wait);
}