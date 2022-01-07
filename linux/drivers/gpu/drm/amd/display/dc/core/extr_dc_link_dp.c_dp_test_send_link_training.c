
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc_link_settings {scalar_t__ link_rate; scalar_t__ lane_count; int member_0; } ;
struct TYPE_2__ {scalar_t__ link_rate; scalar_t__ lane_count; } ;
struct dc_link {TYPE_1__ verified_link_cap; } ;


 int DP_TEST_LANE_COUNT ;
 int DP_TEST_LINK_RATE ;
 int core_link_read_dpcd (struct dc_link*,int ,unsigned char*,int) ;
 int dp_retrain_link_dp_test (struct dc_link*,struct dc_link_settings*,int) ;

__attribute__((used)) static void dp_test_send_link_training(struct dc_link *link)
{
 struct dc_link_settings link_settings = {0};

 core_link_read_dpcd(
   link,
   DP_TEST_LANE_COUNT,
   (unsigned char *)(&link_settings.lane_count),
   1);
 core_link_read_dpcd(
   link,
   DP_TEST_LINK_RATE,
   (unsigned char *)(&link_settings.link_rate),
   1);


 link->verified_link_cap.lane_count = link_settings.lane_count;
 link->verified_link_cap.link_rate = link_settings.link_rate;

 dp_retrain_link_dp_test(link, &link_settings, 0);
}
