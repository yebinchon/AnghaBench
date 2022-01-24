#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ CENTER_SPREAD; } ;
struct spread_spectrum_data {scalar_t__ percentage; int percentage_divider; int modulation_freq_hz; TYPE_1__ flags; } ;
struct pll_settings {int fract_feedback_divider; int reference_freq; int reference_divider; int /*<<< orphan*/  feedback_divider; } ;
struct fixed31_32 {int dummy; } ;
struct delta_sigma_data {void* ds_frac_size; void* ds_frac_amount; void* nfrac_amount; void* feedback_amount; } ;

/* Variables and functions */
 struct fixed31_32 FUNC0 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC1 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC2 (struct fixed31_32,int) ; 
 void* FUNC3 (struct fixed31_32) ; 
 struct fixed31_32 FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 struct fixed31_32 FUNC6 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC7 (struct fixed31_32,int) ; 
 struct fixed31_32 FUNC8 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct delta_sigma_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC10(
		const struct pll_settings *pll_settings,
		const struct spread_spectrum_data *ss_data,
		struct delta_sigma_data *ds_data)
{
	struct fixed31_32 fb_div;
	struct fixed31_32 ss_amount;
	struct fixed31_32 ss_nslip_amount;
	struct fixed31_32 ss_ds_frac_amount;
	struct fixed31_32 ss_step_size;
	struct fixed31_32 modulation_time;

	if (ds_data == NULL)
		return false;
	if (ss_data == NULL)
		return false;
	if (ss_data->percentage == 0)
		return false;
	if (pll_settings == NULL)
		return false;

	FUNC9(ds_data, 0, sizeof(struct delta_sigma_data));

	/* compute SS_AMOUNT_FBDIV & SS_AMOUNT_NFRAC_SLIP & SS_AMOUNT_DSFRAC*/
	/* 6 decimal point support in fractional feedback divider */
	fb_div  = FUNC4(
		pll_settings->fract_feedback_divider, 1000000);
	fb_div = FUNC0(fb_div, pll_settings->feedback_divider);

	ds_data->ds_frac_amount = 0;
	/*spreadSpectrumPercentage is in the unit of .01%,
	 * so have to divided by 100 * 100*/
	ss_amount = FUNC6(
		fb_div, FUNC4(ss_data->percentage,
					100 * ss_data->percentage_divider));
	ds_data->feedback_amount = FUNC3(ss_amount);

	ss_nslip_amount = FUNC8(ss_amount,
		FUNC5(ds_data->feedback_amount));
	ss_nslip_amount = FUNC7(ss_nslip_amount, 10);
	ds_data->nfrac_amount = FUNC3(ss_nslip_amount);

	ss_ds_frac_amount = FUNC8(ss_nslip_amount,
		FUNC5(ds_data->nfrac_amount));
	ss_ds_frac_amount = FUNC7(ss_ds_frac_amount, 65536);
	ds_data->ds_frac_amount = FUNC3(ss_ds_frac_amount);

	/* compute SS_STEP_SIZE_DSFRAC */
	modulation_time = FUNC4(
		pll_settings->reference_freq * 1000,
		pll_settings->reference_divider * ss_data->modulation_freq_hz);

	if (ss_data->flags.CENTER_SPREAD)
		modulation_time = FUNC2(modulation_time, 4);
	else
		modulation_time = FUNC2(modulation_time, 2);

	ss_step_size = FUNC1(ss_amount, modulation_time);
	/* SS_STEP_SIZE_DSFRAC_DEC = Int(SS_STEP_SIZE * 2 ^ 16 * 10)*/
	ss_step_size = FUNC7(ss_step_size, 65536 * 10);
	ds_data->ds_frac_size =  FUNC3(ss_step_size);

	return true;
}