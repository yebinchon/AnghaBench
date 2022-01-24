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
struct sii9234 {scalar_t__ state; int /*<<< orphan*/  dev; } ;
typedef  enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;

/* Variables and functions */
 int /*<<< orphan*/  MHL_TX_SYSSTAT_REG ; 
 int RSEN_STATUS ; 
 int ST_FAILURE ; 
 scalar_t__ ST_RGND_1K ; 
 int ST_RSEN_HIGH ; 
 int /*<<< orphan*/  T_SRC_RXSENSE_DEGLITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii9234*) ; 
 int FUNC3 (struct sii9234*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sii9234*) ; 
 int /*<<< orphan*/  FUNC6 (struct sii9234*,int) ; 

__attribute__((used)) static enum sii9234_state FUNC7(struct sii9234 *ctx)
{
	int value;

	/* Work_around code to handle wrong interrupt */
	if (ctx->state != ST_RGND_1K) {
		FUNC1(ctx->dev, "RSEN_HIGH without RGND_1K\n");
		return ST_FAILURE;
	}
	value = FUNC3(ctx, MHL_TX_SYSSTAT_REG);
	if (value < 0)
		return ST_FAILURE;

	if (value & RSEN_STATUS) {
		FUNC0(ctx->dev, "MHL cable connected.. RSEN High\n");
		return ST_RSEN_HIGH;
	}
	FUNC0(ctx->dev, "RSEN lost\n");
	/*
	 * Once RSEN loss is confirmed,we need to check
	 * based on cable status and chip power status,whether
	 * it is SINK Loss(HDMI cable not connected, TV Off)
	 * or MHL cable disconnection
	 * TODO: Define the below mhl_disconnection()
	 */
	FUNC4(T_SRC_RXSENSE_DEGLITCH);
	value = FUNC3(ctx, MHL_TX_SYSSTAT_REG);
	if (value < 0)
		return ST_FAILURE;
	FUNC0(ctx->dev, "sys_stat: %x\n", value);

	if (value & RSEN_STATUS) {
		FUNC0(ctx->dev, "RSEN recovery\n");
		return ST_RSEN_HIGH;
	}
	FUNC0(ctx->dev, "RSEN Really LOW\n");
	/* To meet CTS 3.3.22.2 spec */
	FUNC6(ctx, false);
	FUNC2(ctx);
	FUNC5(ctx);

	return ST_FAILURE;
}