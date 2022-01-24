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
 int BIT_MDT_IDLE_AFTER_HAWB_DISABLE ; 
 int BIT_MDT_RFIFO_DATA_RDY ; 
 int BIT_MDT_XFIFO_EMPTY ; 
 int /*<<< orphan*/  MHL_INT_RC_FEAT_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RCHANGE ; 
 int /*<<< orphan*/  REG_MDT_INT_0 ; 
 int /*<<< orphan*/  REG_MDT_XMIT_CTRL ; 
 scalar_t__ FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*) ; 
 int FUNC4 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct sii8620 *ctx)
{
	u8 stat = FUNC4(ctx, REG_MDT_INT_0);

	if (stat & BIT_MDT_IDLE_AFTER_HAWB_DISABLE)
		if (FUNC1(ctx))
			FUNC2(ctx, FUNC0(RCHANGE),
				MHL_INT_RC_FEAT_COMPLETE);

	if (stat & BIT_MDT_RFIFO_DATA_RDY)
		FUNC3(ctx);

	if (stat & BIT_MDT_XFIFO_EMPTY)
		FUNC5(ctx, REG_MDT_XMIT_CTRL, 0);

	FUNC5(ctx, REG_MDT_INT_0, stat);
}