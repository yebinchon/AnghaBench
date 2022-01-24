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
struct timing_generator {int dummy; } ;
struct tg_color {int /*<<< orphan*/  color_r_cr; int /*<<< orphan*/  color_g_y; int /*<<< orphan*/  color_b_cb; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_BLACK_COLOR ; 
 int /*<<< orphan*/  OTG_BLACK_COLOR_B_CB ; 
 int /*<<< orphan*/  OTG_BLACK_COLOR_G_Y ; 
 int /*<<< orphan*/  OTG_BLACK_COLOR_R_CR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(
		struct timing_generator *optc,
		const struct tg_color *black_color)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC1(OTG_BLACK_COLOR, 0,
			OTG_BLACK_COLOR_B_CB, black_color->color_b_cb,
			OTG_BLACK_COLOR_G_Y, black_color->color_g_y,
			OTG_BLACK_COLOR_R_CR, black_color->color_r_cr);
}