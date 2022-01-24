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
struct sii8620 {int mode; int feature_complete; scalar_t__ edid; } ;

/* Variables and functions */
#define  CM_ECBUS_S 129 
#define  CM_MHL3 128 
 size_t MHL_INT_RCHANGE ; 
 int MHL_INT_RC_DCAP_CHG ; 
 int MHL_INT_RC_FEAT_COMPLETE ; 
 int MHL_INT_RC_FEAT_REQ ; 
 int MHL_INT_SIZE ; 
 int /*<<< orphan*/  MHL_XDC_ECBUS_SPEEDS ; 
 int /*<<< orphan*/  REG_MHL_INT_0 ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  sii8620_got_ecbus_speed ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC6 (struct sii8620*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC7(struct sii8620 *ctx)
{
	u8 ints[MHL_INT_SIZE];

	FUNC4(ctx, REG_MHL_INT_0, ints, MHL_INT_SIZE);
	FUNC6(ctx, REG_MHL_INT_0, ints, MHL_INT_SIZE);

	if (ints[MHL_INT_RCHANGE] & MHL_INT_RC_DCAP_CHG) {
		switch (ctx->mode) {
		case CM_MHL3:
			FUNC2(ctx, MHL_XDC_ECBUS_SPEEDS);
			FUNC3(ctx, sii8620_got_ecbus_speed);
			break;
		case CM_ECBUS_S:
			FUNC1(ctx, true);
			break;
		default:
			break;
		}
	}
	if (ints[MHL_INT_RCHANGE] & MHL_INT_RC_FEAT_REQ)
		FUNC5(ctx);
	if (ints[MHL_INT_RCHANGE] & MHL_INT_RC_FEAT_COMPLETE) {
		ctx->feature_complete = true;
		if (ctx->edid)
			FUNC0(ctx);
	}
}