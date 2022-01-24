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
typedef  int u8 ;
struct sii8620 {int /*<<< orphan*/  feature_complete; } ;

/* Variables and functions */
 int BIT_DDC_CMD_DONE ; 
 int /*<<< orphan*/  MHL_INT_RC_FEAT_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCHANGE ; 
 int /*<<< orphan*/  REG_INTR3 ; 
 int /*<<< orphan*/  REG_INTR3_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 scalar_t__ FUNC2 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct sii8620 *ctx)
{
	u8 stat = FUNC4(ctx, REG_INTR3);

	if (stat & BIT_DDC_CMD_DONE) {
		FUNC5(ctx, REG_INTR3_MASK, 0);
		if (FUNC2(ctx) && !ctx->feature_complete)
			FUNC3(ctx, FUNC0(RCHANGE),
					   MHL_INT_RC_FEAT_REQ);
		else
			FUNC1(ctx);
	}
	FUNC5(ctx, REG_INTR3, stat);
}