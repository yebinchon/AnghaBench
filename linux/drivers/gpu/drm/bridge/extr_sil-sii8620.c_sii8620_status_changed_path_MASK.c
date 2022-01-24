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
struct sii8620 {int* stat; scalar_t__ use_packed_pixel; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINK_MODE ; 
 size_t MHL_DST_LINK_MODE ; 
 int MHL_DST_LM_CLK_MODE_NORMAL ; 
 int MHL_DST_LM_CLK_MODE_PACKED_PIXEL ; 
 int MHL_DST_LM_PATH_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sii8620 *ctx)
{
	u8 link_mode;

	if (ctx->use_packed_pixel)
		link_mode = MHL_DST_LM_CLK_MODE_PACKED_PIXEL;
	else
		link_mode = MHL_DST_LM_CLK_MODE_NORMAL;

	if (ctx->stat[MHL_DST_LINK_MODE] & MHL_DST_LM_PATH_ENABLED)
		link_mode |= MHL_DST_LM_PATH_ENABLED;

	FUNC1(ctx, FUNC0(LINK_MODE),
			      link_mode);
}