
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_branch_dev; } ;
struct dc_link {TYPE_1__ dpcd_caps; } ;



bool is_dp_active_dongle(const struct dc_link *link)
{
 return link->dpcd_caps.is_branch_dev;
}
