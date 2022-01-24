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
struct sii8620 {int* stat; int* xstat; } ;

/* Variables and functions */
 size_t MHL_DST_CONNECTED_RDY ; 
 int MHL_DST_CONN_DCAP_RDY ; 
 size_t MHL_DST_LINK_MODE ; 
 int MHL_DST_LM_PATH_ENABLED ; 
 int MHL_DST_SIZE ; 
 int MHL_XDS_SIZE ; 
 int /*<<< orphan*/  REG_MHL_EXTSTAT_0 ; 
 int /*<<< orphan*/  REG_MHL_STAT_0 ; 
 int /*<<< orphan*/  FUNC0 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC4 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 

__attribute__((used)) static void FUNC6(struct sii8620 *ctx)
{
	u8 st[MHL_DST_SIZE], xst[MHL_XDS_SIZE];

	FUNC2(ctx, REG_MHL_STAT_0, st, MHL_DST_SIZE);
	FUNC2(ctx, REG_MHL_EXTSTAT_0, xst, MHL_XDS_SIZE);

	FUNC5(ctx->stat, st, MHL_DST_SIZE);
	FUNC5(ctx->xstat, xst, MHL_XDS_SIZE);

	if (ctx->stat[MHL_DST_CONNECTED_RDY] & st[MHL_DST_CONNECTED_RDY] &
	    MHL_DST_CONN_DCAP_RDY) {
		FUNC4(ctx);

		if (!FUNC0(ctx))
			FUNC1(ctx, false);
	}

	if (st[MHL_DST_LINK_MODE] & MHL_DST_LM_PATH_ENABLED)
		FUNC3(ctx);
}