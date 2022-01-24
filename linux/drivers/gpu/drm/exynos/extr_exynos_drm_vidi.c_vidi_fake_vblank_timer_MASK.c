#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vidi_context {int /*<<< orphan*/  timer; TYPE_1__* crtc; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDI_REFRESH_TIME ; 
 struct vidi_context* ctx ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct vidi_context* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct vidi_context *ctx = FUNC1(ctx, t, timer);

	if (FUNC0(&ctx->crtc->base))
		FUNC2(&ctx->timer,
			jiffies + FUNC3(VIDI_REFRESH_TIME) - 1);
}