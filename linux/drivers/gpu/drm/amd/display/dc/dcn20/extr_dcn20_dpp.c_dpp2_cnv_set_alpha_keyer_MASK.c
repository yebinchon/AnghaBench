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
struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct cnv_color_keyer_params {int /*<<< orphan*/  color_keyer_blue_high; int /*<<< orphan*/  color_keyer_blue_low; int /*<<< orphan*/  color_keyer_green_high; int /*<<< orphan*/  color_keyer_green_low; int /*<<< orphan*/  color_keyer_red_high; int /*<<< orphan*/  color_keyer_red_low; int /*<<< orphan*/  color_keyer_alpha_high; int /*<<< orphan*/  color_keyer_alpha_low; int /*<<< orphan*/  color_keyer_mode; int /*<<< orphan*/  color_keyer_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_KEYER_ALPHA ; 
 int /*<<< orphan*/  COLOR_KEYER_ALPHA_HIGH ; 
 int /*<<< orphan*/  COLOR_KEYER_ALPHA_LOW ; 
 int /*<<< orphan*/  COLOR_KEYER_BLUE ; 
 int /*<<< orphan*/  COLOR_KEYER_BLUE_HIGH ; 
 int /*<<< orphan*/  COLOR_KEYER_BLUE_LOW ; 
 int /*<<< orphan*/  COLOR_KEYER_CONTROL ; 
 int /*<<< orphan*/  COLOR_KEYER_EN ; 
 int /*<<< orphan*/  COLOR_KEYER_GREEN ; 
 int /*<<< orphan*/  COLOR_KEYER_GREEN_HIGH ; 
 int /*<<< orphan*/  COLOR_KEYER_GREEN_LOW ; 
 int /*<<< orphan*/  COLOR_KEYER_MODE ; 
 int /*<<< orphan*/  COLOR_KEYER_RED ; 
 int /*<<< orphan*/  COLOR_KEYER_RED_HIGH ; 
 int /*<<< orphan*/  COLOR_KEYER_RED_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcn20_dpp* FUNC1 (struct dpp*) ; 

void FUNC2(
		struct dpp *dpp_base,
		struct cnv_color_keyer_params *color_keyer)
{
	struct dcn20_dpp *dpp = FUNC1(dpp_base);

	FUNC0(COLOR_KEYER_CONTROL, COLOR_KEYER_EN, color_keyer->color_keyer_en);

	FUNC0(COLOR_KEYER_CONTROL, COLOR_KEYER_MODE, color_keyer->color_keyer_mode);

	FUNC0(COLOR_KEYER_ALPHA, COLOR_KEYER_ALPHA_LOW, color_keyer->color_keyer_alpha_low);
	FUNC0(COLOR_KEYER_ALPHA, COLOR_KEYER_ALPHA_HIGH, color_keyer->color_keyer_alpha_high);

	FUNC0(COLOR_KEYER_RED, COLOR_KEYER_RED_LOW, color_keyer->color_keyer_red_low);
	FUNC0(COLOR_KEYER_RED, COLOR_KEYER_RED_HIGH, color_keyer->color_keyer_red_high);

	FUNC0(COLOR_KEYER_GREEN, COLOR_KEYER_GREEN_LOW, color_keyer->color_keyer_green_low);
	FUNC0(COLOR_KEYER_GREEN, COLOR_KEYER_GREEN_HIGH, color_keyer->color_keyer_green_high);

	FUNC0(COLOR_KEYER_BLUE, COLOR_KEYER_BLUE_LOW, color_keyer->color_keyer_blue_low);
	FUNC0(COLOR_KEYER_BLUE, COLOR_KEYER_BLUE_HIGH, color_keyer->color_keyer_blue_high);
}