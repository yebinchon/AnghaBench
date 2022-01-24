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
struct sii8620_mt_msg {int /*<<< orphan*/  ret; } ;
struct sii8620 {int /*<<< orphan*/  mt_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_STATE_DONE ; 
 int /*<<< orphan*/  REG_MSC_MT_RCVD_DATA0 ; 
 struct sii8620_mt_msg* FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	struct sii8620_mt_msg *msg = FUNC0(ctx);

	if (!msg)
		return;

	msg->ret = FUNC1(ctx, REG_MSC_MT_RCVD_DATA0);
	ctx->mt_state = MT_STATE_DONE;
}