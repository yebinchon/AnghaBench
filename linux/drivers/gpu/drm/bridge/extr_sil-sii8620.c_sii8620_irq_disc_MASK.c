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
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int BIT_CBUS_MHL12_DISCON_INT ; 
 int BIT_CBUS_MHL3_DISCON_INT ; 
 int BIT_DISC_CTRL9_NOMHL_EST ; 
 int BIT_DISC_CTRL9_WAKE_DRVFLT ; 
 int BIT_DISC_CTRL9_WAKE_PULSE_BYPASS ; 
 int BIT_MHL_EST_INT ; 
 int BIT_NOT_MHL_EST_INT ; 
 int BIT_RGND_READY_INT ; 
 int MSK_DISC_STAT2_RGND ; 
 int /*<<< orphan*/  REG_CBUS_DISC_INTR0 ; 
 int /*<<< orphan*/  REG_CBUS_DISC_INTR0_MASK ; 
 int /*<<< orphan*/  REG_DISC_CTRL9 ; 
 int /*<<< orphan*/  REG_DISC_STAT2 ; 
 int VAL_CBUS_MHL_DISCON ; 
 int VAL_RGND_1K ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*) ; 
 int FUNC3 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct sii8620 *ctx)
{
	u8 stat = FUNC3(ctx, REG_CBUS_DISC_INTR0);

	if (stat & VAL_CBUS_MHL_DISCON)
		FUNC0(ctx);

	if (stat & BIT_RGND_READY_INT) {
		u8 stat2 = FUNC3(ctx, REG_DISC_STAT2);

		if ((stat2 & MSK_DISC_STAT2_RGND) == VAL_RGND_1K) {
			FUNC1(ctx);
		} else {
			FUNC5(ctx,
				REG_DISC_CTRL9, BIT_DISC_CTRL9_WAKE_DRVFLT
					| BIT_DISC_CTRL9_NOMHL_EST
					| BIT_DISC_CTRL9_WAKE_PULSE_BYPASS,
				REG_CBUS_DISC_INTR0_MASK, BIT_RGND_READY_INT
					| BIT_CBUS_MHL3_DISCON_INT
					| BIT_CBUS_MHL12_DISCON_INT
					| BIT_NOT_MHL_EST_INT
			);
		}
	}
	if (stat & BIT_MHL_EST_INT)
		FUNC2(ctx);

	FUNC4(ctx, REG_CBUS_DISC_INTR0, stat);
}