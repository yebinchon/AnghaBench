
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct dp_device_vendor_id {int* ieee_oui; int ieee_device_id; } ;
struct TYPE_2__ {int branch_dev_id; int branch_dev_name; } ;
struct dc_link {TYPE_1__ dpcd_caps; } ;
typedef int dp_id ;


 int DP_BRANCH_OUI ;
 int core_link_read_dpcd (struct dc_link*,int ,int *,int) ;
 int memmove (int ,int ,int) ;

__attribute__((used)) static void read_dp_device_vendor_id(struct dc_link *link)
{
 struct dp_device_vendor_id dp_id;


 core_link_read_dpcd(
  link,
  DP_BRANCH_OUI,
  (uint8_t *)&dp_id,
  sizeof(dp_id));

 link->dpcd_caps.branch_dev_id =
  (dp_id.ieee_oui[0] << 16) +
  (dp_id.ieee_oui[1] << 8) +
  dp_id.ieee_oui[2];

 memmove(
  link->dpcd_caps.branch_dev_name,
  dp_id.ieee_device_id,
  sizeof(dp_id.ieee_device_id));
}
