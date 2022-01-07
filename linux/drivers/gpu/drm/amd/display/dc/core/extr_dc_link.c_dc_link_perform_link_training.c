
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link_settings {int dummy; } ;
struct dc {int link_count; int * links; } ;


 int dc_link_dp_perform_link_training (int ,struct dc_link_settings*,int) ;

void dc_link_perform_link_training(struct dc *dc,
       struct dc_link_settings *link_setting,
       bool skip_video_pattern)
{
 int i;

 for (i = 0; i < dc->link_count; i++)
  dc_link_dp_perform_link_training(
   dc->links[i],
   link_setting,
   skip_video_pattern);
}
