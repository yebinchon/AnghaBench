
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int dummy; } ;


 int LINK_TRAINING_RETRY_DELAY ;
 scalar_t__ LINK_TRAINING_SUCCESS ;
 scalar_t__ dc_link_dp_perform_link_training (struct dc_link*,struct dc_link_settings const*,int) ;
 int msleep (int) ;

bool perform_link_training_with_retries(
 struct dc_link *link,
 const struct dc_link_settings *link_setting,
 bool skip_video_pattern,
 int attempts)
{
 uint8_t j;
 uint8_t delay_between_attempts = LINK_TRAINING_RETRY_DELAY;

 for (j = 0; j < attempts; ++j) {

  if (dc_link_dp_perform_link_training(
    link,
    link_setting,
    skip_video_pattern) == LINK_TRAINING_SUCCESS)
   return 1;

  msleep(delay_between_attempts);
  delay_between_attempts += LINK_TRAINING_RETRY_DELAY;
 }

 return 0;
}
