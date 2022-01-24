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
struct sii9234 {int /*<<< orphan*/  dev; } ;
typedef  enum sii9234_state { ____Placeholder_sii9234_state } sii9234_state ;

/* Variables and functions */
 int HPD_CHANGE_INT_MASK ; 
 int /*<<< orphan*/  MHL_TX_DISC_CTRL1_REG ; 
 int /*<<< orphan*/  MHL_TX_INTR1_ENABLE_REG ; 
 int /*<<< orphan*/  MHL_TX_MHLTX_CTL1_REG ; 
 int RSEN_CHANGE_INT_MASK ; 
 int ST_FAILURE ; 
 int ST_MHL_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (struct sii9234*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sii9234*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sii9234*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sii9234*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sii9234*) ; 

__attribute__((used)) static enum sii9234_state FUNC6(struct sii9234 *ctx)
{
	FUNC2(ctx->dev, "mhl est interrupt\n");

	/* Discovery override */
	FUNC3(ctx, MHL_TX_MHLTX_CTL1_REG, 0x10);
	/* Increase DDC translation layer timer (byte mode) */
	FUNC0(ctx, 0x07, 0x32);
	FUNC1(ctx, 0x44, ~0, 1 << 1);
	/* Keep the discovery enabled. Need RGND interrupt */
	FUNC4(ctx, MHL_TX_DISC_CTRL1_REG, ~0, 1);
	FUNC3(ctx, MHL_TX_INTR1_ENABLE_REG,
		      RSEN_CHANGE_INT_MASK | HPD_CHANGE_INT_MASK);

	if (FUNC5(ctx))
		return ST_FAILURE;

	return ST_MHL_ESTABLISHED;
}