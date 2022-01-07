
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int CENTER_SPREAD; int EXTERNAL_SS; } ;
struct TYPE_7__ {int STEP_AND_DELAY_INFO; scalar_t__ EXTERNAL; scalar_t__ CENTER_MODE; } ;
struct spread_spectrum_info {int spread_spectrum_percentage; int spread_percentage_divider; int percentage; int percentage_divider; TYPE_3__ flags; TYPE_2__ type; int spread_spectrum_range; int modulation_freq_hz; int target_clock_range; int freq_range_khz; } ;
struct spread_spectrum_data {int spread_spectrum_percentage; int spread_percentage_divider; int percentage; int percentage_divider; TYPE_3__ flags; TYPE_2__ type; int spread_spectrum_range; int modulation_freq_hz; int target_clock_range; int freq_range_khz; } ;
struct dce110_clk_src {TYPE_4__* bios; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef enum as_signal_type { ____Placeholder_as_signal_type } as_signal_type ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {scalar_t__ (* get_ss_entry_number ) (TYPE_4__*,int) ;int (* get_spread_spectrum_info ) (TYPE_4__*,int,scalar_t__,struct spread_spectrum_info*) ;} ;


 int AS_SIGNAL_TYPE_HDMI ;
 int BP_RESULT_FAILURE ;
 int BP_RESULT_OK ;
 int DC_LOGGER_INIT () ;
 int DC_LOG_SYNC (char*) ;
 int GFP_KERNEL ;
 struct spread_spectrum_info* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct spread_spectrum_info*) ;
 scalar_t__ stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int,scalar_t__,struct spread_spectrum_info*) ;

__attribute__((used)) static void get_ss_info_from_atombios(
  struct dce110_clk_src *clk_src,
  enum as_signal_type as_signal,
  struct spread_spectrum_data *spread_spectrum_data[],
  uint32_t *ss_entries_num)
{
 enum bp_result bp_result = BP_RESULT_FAILURE;
 struct spread_spectrum_info *ss_info;
 struct spread_spectrum_data *ss_data;
 struct spread_spectrum_info *ss_info_cur;
 struct spread_spectrum_data *ss_data_cur;
 uint32_t i;
 DC_LOGGER_INIT();
 if (ss_entries_num == ((void*)0)) {
  DC_LOG_SYNC(
   "Invalid entry !!!\n");
  return;
 }
 if (spread_spectrum_data == ((void*)0)) {
  DC_LOG_SYNC(
   "Invalid array pointer!!!\n");
  return;
 }

 spread_spectrum_data[0] = ((void*)0);
 *ss_entries_num = 0;

 *ss_entries_num = clk_src->bios->funcs->get_ss_entry_number(
   clk_src->bios,
   as_signal);

 if (*ss_entries_num == 0)
  return;

 ss_info = kcalloc(*ss_entries_num,
     sizeof(struct spread_spectrum_info),
     GFP_KERNEL);
 ss_info_cur = ss_info;
 if (ss_info == ((void*)0))
  return;

 ss_data = kcalloc(*ss_entries_num,
     sizeof(struct spread_spectrum_data),
     GFP_KERNEL);
 if (ss_data == ((void*)0))
  goto out_free_info;

 for (i = 0, ss_info_cur = ss_info;
  i < (*ss_entries_num);
  ++i, ++ss_info_cur) {

  bp_result = clk_src->bios->funcs->get_spread_spectrum_info(
    clk_src->bios,
    as_signal,
    i,
    ss_info_cur);

  if (bp_result != BP_RESULT_OK)
   goto out_free_data;
 }

 for (i = 0, ss_info_cur = ss_info, ss_data_cur = ss_data;
  i < (*ss_entries_num);
  ++i, ++ss_info_cur, ++ss_data_cur) {

  if (ss_info_cur->type.STEP_AND_DELAY_INFO != 0) {
   DC_LOG_SYNC(
    "Invalid ATOMBIOS SS Table!!!\n");
   goto out_free_data;
  }



  if (as_signal == AS_SIGNAL_TYPE_HDMI
    && ss_info_cur->spread_spectrum_percentage > 6){

   DC_LOG_SYNC(
    "Invalid SS percentage ");
   DC_LOG_SYNC(
    "for HDMI in ATOMBIOS info Table!!!\n");
   continue;
  }
  if (ss_info_cur->spread_percentage_divider == 1000) {







   ss_info_cur->spread_spectrum_percentage /= 10;
   ss_info_cur->spread_percentage_divider = 100;
  }

  ss_data_cur->freq_range_khz = ss_info_cur->target_clock_range;
  ss_data_cur->percentage =
    ss_info_cur->spread_spectrum_percentage;
  ss_data_cur->percentage_divider =
    ss_info_cur->spread_percentage_divider;
  ss_data_cur->modulation_freq_hz =
    ss_info_cur->spread_spectrum_range;

  if (ss_info_cur->type.CENTER_MODE)
   ss_data_cur->flags.CENTER_SPREAD = 1;

  if (ss_info_cur->type.EXTERNAL)
   ss_data_cur->flags.EXTERNAL_SS = 1;

 }

 *spread_spectrum_data = ss_data;
 kfree(ss_info);
 return;

out_free_data:
 kfree(ss_data);
 *ss_entries_num = 0;
out_free_info:
 kfree(ss_info);
}
