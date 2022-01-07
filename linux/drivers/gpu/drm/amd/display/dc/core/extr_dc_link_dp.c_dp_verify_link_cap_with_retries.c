
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int reported_link_cap; int verified_link_cap; } ;
typedef enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;


 int dc_link_detect_sink (struct dc_link*,int*) ;
 scalar_t__ dp_verify_link_cap (struct dc_link*,int *,int*) ;
 int memset (int *,int ,int) ;
 int msleep (int) ;

bool dp_verify_link_cap_with_retries(
 struct dc_link *link,
 struct dc_link_settings *known_limit_link_setting,
 int attempts)
{
 uint8_t i = 0;
 bool success = 0;

 for (i = 0; i < attempts; i++) {
  int fail_count = 0;
  enum dc_connection_type type;

  memset(&link->verified_link_cap, 0,
    sizeof(struct dc_link_settings));
  if (!dc_link_detect_sink(link, &type)) {
   break;
  } else if (dp_verify_link_cap(link,
    &link->reported_link_cap,
    &fail_count) && fail_count == 0) {
   success = 1;
   break;
  }
  msleep(10);
 }
 return success;
}
