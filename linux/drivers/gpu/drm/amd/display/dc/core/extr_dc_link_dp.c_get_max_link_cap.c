
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dc_link_settings {int member_3; scalar_t__ link_rate; scalar_t__ lane_count; scalar_t__ link_spread; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_10__ {scalar_t__ lane_count; scalar_t__ link_rate; scalar_t__ link_spread; } ;
struct dc_link {TYPE_5__ reported_link_cap; TYPE_4__* link_enc; } ;
struct TYPE_6__ {scalar_t__ IS_HBR3_CAPABLE; scalar_t__ IS_HBR2_CAPABLE; } ;
struct TYPE_7__ {TYPE_1__ bits; } ;
struct TYPE_8__ {TYPE_2__ flags; } ;
struct TYPE_9__ {TYPE_3__ features; } ;


 int LANE_COUNT_FOUR ;
 int LINK_RATE_HIGH ;
 scalar_t__ LINK_RATE_HIGH2 ;
 scalar_t__ LINK_RATE_HIGH3 ;
 int LINK_SPREAD_05_DOWNSPREAD_30KHZ ;

__attribute__((used)) static struct dc_link_settings get_max_link_cap(struct dc_link *link)
{

 struct dc_link_settings max_link_cap = {LANE_COUNT_FOUR, LINK_RATE_HIGH,
   LINK_SPREAD_05_DOWNSPREAD_30KHZ, 0, 0};


 if (link->link_enc->features.flags.bits.IS_HBR2_CAPABLE)
  max_link_cap.link_rate = LINK_RATE_HIGH2;

 if (link->link_enc->features.flags.bits.IS_HBR3_CAPABLE)
  max_link_cap.link_rate = LINK_RATE_HIGH3;


 if (link->reported_link_cap.lane_count < max_link_cap.lane_count)
  max_link_cap.lane_count =
    link->reported_link_cap.lane_count;
 if (link->reported_link_cap.link_rate < max_link_cap.link_rate)
  max_link_cap.link_rate =
    link->reported_link_cap.link_rate;
 if (link->reported_link_cap.link_spread <
   max_link_cap.link_spread)
  max_link_cap.link_spread =
    link->reported_link_cap.link_spread;
 return max_link_cap;
}
