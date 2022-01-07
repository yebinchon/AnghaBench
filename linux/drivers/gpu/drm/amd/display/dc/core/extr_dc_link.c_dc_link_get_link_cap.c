
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link_settings {scalar_t__ lane_count; scalar_t__ link_rate; } ;
struct dc_link {struct dc_link_settings const verified_link_cap; struct dc_link_settings const preferred_link_setting; } ;


 scalar_t__ LANE_COUNT_UNKNOWN ;
 scalar_t__ LINK_RATE_UNKNOWN ;

const struct dc_link_settings *dc_link_get_link_cap(
  const struct dc_link *link)
{
 if (link->preferred_link_setting.lane_count != LANE_COUNT_UNKNOWN &&
   link->preferred_link_setting.link_rate != LINK_RATE_UNKNOWN)
  return &link->preferred_link_setting;
 return &link->verified_link_cap;
}
