
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct link_training_settings {int dummy; } ;
struct dc_link_settings {int dummy; } ;
struct TYPE_8__ {int* fec_enable; } ;
struct dc_link {TYPE_3__* ctx; TYPE_4__ preferred_training_settings; } ;
typedef enum link_training_result { ____Placeholder_link_training_result } link_training_result ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_5__ {int ltFailCount; } ;
struct TYPE_6__ {TYPE_1__ debug_data; } ;


 int LINK_TRAINING_SUCCESS ;
 int dp_set_fec_ready (struct dc_link*,int) ;
 int dpcd_set_link_settings (struct dc_link*,struct link_training_settings*) ;
 int initialize_training_settings (struct dc_link*,struct dc_link_settings const*,TYPE_4__*,struct link_training_settings*) ;
 int perform_channel_equalization_sequence (struct dc_link*,struct link_training_settings*) ;
 int perform_clock_recovery_sequence (struct dc_link*,struct link_training_settings*) ;
 int perform_link_training_int (struct dc_link*,struct link_training_settings*,int) ;
 int print_status_message (struct dc_link*,struct link_training_settings*,int) ;

enum link_training_result dc_link_dp_perform_link_training(
 struct dc_link *link,
 const struct dc_link_settings *link_setting,
 bool skip_video_pattern)
{
 enum link_training_result status = LINK_TRAINING_SUCCESS;
 struct link_training_settings lt_settings;




 initialize_training_settings(
   link,
   link_setting,
   &link->preferred_training_settings,
   &lt_settings);


 dpcd_set_link_settings(link, &lt_settings);
 status = perform_clock_recovery_sequence(link, &lt_settings);
 if (status == LINK_TRAINING_SUCCESS) {
  status = perform_channel_equalization_sequence(link,
    &lt_settings);
 }

 if ((status == LINK_TRAINING_SUCCESS) || !skip_video_pattern) {
  status = perform_link_training_int(link,
    &lt_settings,
    status);
 }


 print_status_message(link, &lt_settings, status);

 if (status != LINK_TRAINING_SUCCESS)
  link->ctx->dc->debug_data.ltFailCount++;

 return status;
}
