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
struct sii8620 {int* stat; int mode; } ;
typedef  enum sii8620_mode { ____Placeholder_sii8620_mode } sii8620_mode ;

/* Variables and functions */
 int BIT_INTR9_DEVCAP_DONE ; 
 int BIT_INTR9_EDID_DONE ; 
 int BIT_INTR9_EDID_ERROR ; 
 int CM_MHL1 ; 
 int CM_MHL3 ; 
 size_t MHL_DST_VERSION ; 
 int /*<<< orphan*/  REG_INTR9_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx)
{
	enum sii8620_mode mode;

	mode = ctx->stat[MHL_DST_VERSION] >= 0x30 ? CM_MHL3 : CM_MHL1;
	if (mode > ctx->mode)
		FUNC1(ctx, mode);
	FUNC0(ctx);
	FUNC2(ctx, REG_INTR9_MASK, BIT_INTR9_DEVCAP_DONE
		      | BIT_INTR9_EDID_DONE | BIT_INTR9_EDID_ERROR);
}