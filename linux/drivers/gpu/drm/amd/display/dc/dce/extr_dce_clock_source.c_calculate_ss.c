
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ CENTER_SPREAD; } ;
struct spread_spectrum_data {scalar_t__ percentage; int percentage_divider; int modulation_freq_hz; TYPE_1__ flags; } ;
struct pll_settings {int fract_feedback_divider; int reference_freq; int reference_divider; int feedback_divider; } ;
struct fixed31_32 {int dummy; } ;
struct delta_sigma_data {void* ds_frac_size; void* ds_frac_amount; void* nfrac_amount; void* feedback_amount; } ;


 struct fixed31_32 dc_fixpt_add_int (struct fixed31_32,int ) ;
 struct fixed31_32 dc_fixpt_div (struct fixed31_32,struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_div_int (struct fixed31_32,int) ;
 void* dc_fixpt_floor (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_from_fraction (int,int) ;
 int dc_fixpt_from_int (void*) ;
 struct fixed31_32 dc_fixpt_mul (struct fixed31_32,struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_mul_int (struct fixed31_32,int) ;
 struct fixed31_32 dc_fixpt_sub (struct fixed31_32,int ) ;
 int memset (struct delta_sigma_data*,int ,int) ;

__attribute__((used)) static bool calculate_ss(
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

 if (ds_data == ((void*)0))
  return 0;
 if (ss_data == ((void*)0))
  return 0;
 if (ss_data->percentage == 0)
  return 0;
 if (pll_settings == ((void*)0))
  return 0;

 memset(ds_data, 0, sizeof(struct delta_sigma_data));



 fb_div = dc_fixpt_from_fraction(
  pll_settings->fract_feedback_divider, 1000000);
 fb_div = dc_fixpt_add_int(fb_div, pll_settings->feedback_divider);

 ds_data->ds_frac_amount = 0;


 ss_amount = dc_fixpt_mul(
  fb_div, dc_fixpt_from_fraction(ss_data->percentage,
     100 * ss_data->percentage_divider));
 ds_data->feedback_amount = dc_fixpt_floor(ss_amount);

 ss_nslip_amount = dc_fixpt_sub(ss_amount,
  dc_fixpt_from_int(ds_data->feedback_amount));
 ss_nslip_amount = dc_fixpt_mul_int(ss_nslip_amount, 10);
 ds_data->nfrac_amount = dc_fixpt_floor(ss_nslip_amount);

 ss_ds_frac_amount = dc_fixpt_sub(ss_nslip_amount,
  dc_fixpt_from_int(ds_data->nfrac_amount));
 ss_ds_frac_amount = dc_fixpt_mul_int(ss_ds_frac_amount, 65536);
 ds_data->ds_frac_amount = dc_fixpt_floor(ss_ds_frac_amount);


 modulation_time = dc_fixpt_from_fraction(
  pll_settings->reference_freq * 1000,
  pll_settings->reference_divider * ss_data->modulation_freq_hz);

 if (ss_data->flags.CENTER_SPREAD)
  modulation_time = dc_fixpt_div_int(modulation_time, 4);
 else
  modulation_time = dc_fixpt_div_int(modulation_time, 2);

 ss_step_size = dc_fixpt_div(ss_amount, modulation_time);

 ss_step_size = dc_fixpt_mul_int(ss_step_size, 65536 * 10);
 ds_data->ds_frac_size = dc_fixpt_floor(ss_step_size);

 return 1;
}
