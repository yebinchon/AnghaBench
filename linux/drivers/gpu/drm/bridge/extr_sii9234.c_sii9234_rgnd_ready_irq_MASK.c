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
 int /*<<< orphan*/  MHL_TX_DISC_CTRL4_REG ; 
 int /*<<< orphan*/  MHL_TX_DISC_CTRL5_REG ; 
 int /*<<< orphan*/  MHL_TX_DISC_CTRL6_REG ; 
 int /*<<< orphan*/  MHL_TX_STAT2_REG ; 
 int RGND_INTP_1K ; 
 int RGND_INTP_MASK ; 
 scalar_t__ ST_D3 ; 
 int ST_FAILURE ; 
 int ST_RGND_1K ; 
 int ST_RGND_INIT ; 
 int /*<<< orphan*/  T_SRC_VBUS_CBUS_TO_STABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct sii9234*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sii9234*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sii9234*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sii9234*) ; 
 int /*<<< orphan*/  FUNC8 (struct sii9234*) ; 
 int FUNC9 (struct sii9234*) ; 

__attribute__((used)) static enum sii9234_state FUNC10(struct sii9234 *ctx)
{
	int value;

	if (ctx->state == ST_D3) {
		int ret;

		FUNC0(ctx->dev, "RGND_READY_INT\n");
		FUNC8(ctx);

		ret = FUNC9(ctx);
		if (ret < 0) {
			FUNC1(ctx->dev, "sii9234_reset() failed\n");
			return ST_FAILURE;
		}

		return ST_RGND_INIT;
	}

	/* Got interrupt in inappropriate state */
	if (ctx->state != ST_RGND_INIT)
		return ST_FAILURE;

	value = FUNC3(ctx, MHL_TX_STAT2_REG);
	if (FUNC7(ctx))
		return ST_FAILURE;

	if ((value & RGND_INTP_MASK) != RGND_INTP_1K) {
		FUNC2(ctx->dev, "RGND is not 1k\n");
		return ST_RGND_INIT;
	}
	FUNC0(ctx->dev, "RGND 1K!!\n");
	FUNC5(ctx, MHL_TX_DISC_CTRL4_REG, ~0, 0x8C);
	FUNC4(ctx, MHL_TX_DISC_CTRL5_REG, 0x77);
	FUNC5(ctx, MHL_TX_DISC_CTRL6_REG, ~0, 0x05);
	if (FUNC7(ctx))
		return ST_FAILURE;

	FUNC6(T_SRC_VBUS_CBUS_TO_STABLE);
	return ST_RGND_1K;
}