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
typedef  int uint32_t ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct mpc {int dummy; } ;
struct dcn10_mpc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * MPCC_BG_B_CB ; 
 int /*<<< orphan*/ * MPCC_BG_G_Y ; 
 int /*<<< orphan*/ * MPCC_BG_R_CR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct dcn10_mpc* FUNC1 (struct mpc*) ; 

void FUNC2(struct mpc *mpc,
		struct tg_color *bg_color,
		int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC1(mpc);

	/* mpc color is 12 bit.  tg_color is 10 bit */
	/* todo: might want to use 16 bit to represent color and have each
	 * hw block translate to correct color depth.
	 */
	uint32_t bg_r_cr = bg_color->color_r_cr << 2;
	uint32_t bg_g_y = bg_color->color_g_y << 2;
	uint32_t bg_b_cb = bg_color->color_b_cb << 2;

	FUNC0(MPCC_BG_R_CR[mpcc_id], 0,
			MPCC_BG_R_CR, bg_r_cr);
	FUNC0(MPCC_BG_G_Y[mpcc_id], 0,
			MPCC_BG_G_Y, bg_g_y);
	FUNC0(MPCC_BG_B_CB[mpcc_id], 0,
			MPCC_BG_B_CB, bg_b_cb);
}