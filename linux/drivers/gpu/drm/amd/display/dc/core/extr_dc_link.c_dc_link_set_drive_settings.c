
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_training_settings {int dummy; } ;
struct dc_link {int dummy; } ;
struct dc {int link_count; struct dc_link const** links; } ;


 int ASSERT_CRITICAL (int) ;
 int dc_link_dp_set_drive_settings (struct dc_link const*,struct link_training_settings*) ;

void dc_link_set_drive_settings(struct dc *dc,
    struct link_training_settings *lt_settings,
    const struct dc_link *link)
{

 int i;

 for (i = 0; i < dc->link_count; i++) {
  if (dc->links[i] == link)
   break;
 }

 if (i >= dc->link_count)
  ASSERT_CRITICAL(0);

 dc_link_dp_set_drive_settings(dc->links[i], lt_settings);
}
