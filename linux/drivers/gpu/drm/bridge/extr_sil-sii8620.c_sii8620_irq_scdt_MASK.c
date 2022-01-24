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
 int BIT_INTR_SCDT_CHANGE ; 
 int BIT_TMDS_CSTAT_P3_SCDT ; 
 int /*<<< orphan*/  REG_INTR5 ; 
 int /*<<< orphan*/  REG_TMDS_CSTAT_P3 ; 
 int FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx)
{
	u8 stat = FUNC0(ctx, REG_INTR5);

	if (stat & BIT_INTR_SCDT_CHANGE) {
		u8 cstat = FUNC0(ctx, REG_TMDS_CSTAT_P3);

		if (cstat & BIT_TMDS_CSTAT_P3_SCDT)
			FUNC1(ctx);
	}

	FUNC2(ctx, REG_INTR5, stat);
}