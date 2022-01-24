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
typedef  int u64 ;
struct timer_list {int dummy; } ;
struct pwm_fan_ctx {int pulses_per_revolution; int rpm; int /*<<< orphan*/  rpm_timer; int /*<<< orphan*/  sample_start; int /*<<< orphan*/  pulses; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct pwm_fan_ctx* ctx ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct pwm_fan_ctx* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  rpm_timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pwm_fan_ctx *ctx = FUNC3(ctx, t, rpm_timer);
	int pulses;
	u64 tmp;

	pulses = FUNC0(&ctx->pulses);
	FUNC1(pulses, &ctx->pulses);
	tmp = (u64)pulses * FUNC5(FUNC4(), ctx->sample_start) * 60;
	FUNC2(tmp, ctx->pulses_per_revolution * 1000);
	ctx->rpm = tmp;

	ctx->sample_start = FUNC4();
	FUNC6(&ctx->rpm_timer, jiffies + HZ);
}