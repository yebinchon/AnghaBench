
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link_training_overrides {int dummy; } ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int sync_lt_in_progress; int preferred_link_setting; int preferred_training_settings; } ;


 int memset (int *,int ,int) ;

bool dc_link_dp_sync_lt_begin(struct dc_link *link)
{



 link->sync_lt_in_progress = 1;


 memset(&link->preferred_training_settings, 0,
  sizeof(struct dc_link_training_overrides));
 memset(&link->preferred_link_setting, 0,
  sizeof(struct dc_link_settings));

 return 1;
}
