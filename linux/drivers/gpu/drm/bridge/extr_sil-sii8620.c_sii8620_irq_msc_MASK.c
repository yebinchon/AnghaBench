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
struct sii8620 {int cbus_status; int sink_detected; } ;

/* Variables and functions */
 int BIT_CBUS_HPD_CHG ; 
 int BIT_CBUS_MSC_MR_MSC_MSG ; 
 int BIT_CBUS_MSC_MR_SET_INT ; 
 int BIT_CBUS_MSC_MR_WRITE_STAT ; 
 int BIT_CBUS_MSC_MT_DONE ; 
 int BIT_CBUS_STATUS_CBUS_HPD ; 
 int /*<<< orphan*/  REG_CBUS_INT_0 ; 
 int /*<<< orphan*/  REG_CBUS_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*) ; 
 int FUNC6 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct sii8620 *ctx)
{
	u8 stat = FUNC6(ctx, REG_CBUS_INT_0);

	if (stat & ~BIT_CBUS_HPD_CHG)
		FUNC7(ctx, REG_CBUS_INT_0, stat & ~BIT_CBUS_HPD_CHG);

	if (stat & BIT_CBUS_HPD_CHG) {
		u8 cbus_stat = FUNC6(ctx, REG_CBUS_STATUS);

		if ((cbus_stat ^ ctx->cbus_status) & BIT_CBUS_STATUS_CBUS_HPD) {
			FUNC7(ctx, REG_CBUS_INT_0, BIT_CBUS_HPD_CHG);
		} else {
			stat ^= BIT_CBUS_STATUS_CBUS_HPD;
			cbus_stat ^= BIT_CBUS_STATUS_CBUS_HPD;
		}
		ctx->cbus_status = cbus_stat;
	}

	if (stat & BIT_CBUS_MSC_MR_WRITE_STAT)
		FUNC4(ctx);

	if (stat & BIT_CBUS_HPD_CHG) {
		if (ctx->cbus_status & BIT_CBUS_STATUS_CBUS_HPD) {
			ctx->sink_detected = true;
			FUNC1(ctx);
		} else {
			FUNC0(ctx);
		}
	}

	if (stat & BIT_CBUS_MSC_MR_SET_INT)
		FUNC3(ctx);

	if (stat & BIT_CBUS_MSC_MT_DONE)
		FUNC5(ctx);

	if (stat & BIT_CBUS_MSC_MR_MSC_MSG)
		FUNC2(ctx);
}