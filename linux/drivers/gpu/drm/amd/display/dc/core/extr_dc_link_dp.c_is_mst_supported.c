
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MST_CAP; } ;
union mstm_cap {scalar_t__ raw; TYPE_1__ bits; } ;
union dpcd_rev {scalar_t__ raw; } ;
struct TYPE_4__ {int* mst_enable; } ;
struct dc_link {TYPE_2__ preferred_training_settings; } ;
typedef int rev ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
typedef int cap ;


 int DC_OK ;
 scalar_t__ DPCD_REV_12 ;
 int DP_DPCD_REV ;
 int DP_MSTM_CAP ;
 int core_link_read_dpcd (struct dc_link*,int ,scalar_t__*,int) ;

bool is_mst_supported(struct dc_link *link)
{
 bool mst = 0;
 enum dc_status st = DC_OK;
 union dpcd_rev rev;
 union mstm_cap cap;

 if (link->preferred_training_settings.mst_enable &&
  *link->preferred_training_settings.mst_enable == 0) {
  return 0;
 }

 rev.raw = 0;
 cap.raw = 0;

 st = core_link_read_dpcd(link, DP_DPCD_REV, &rev.raw,
   sizeof(rev));

 if (st == DC_OK && rev.raw >= DPCD_REV_12) {

  st = core_link_read_dpcd(link, DP_MSTM_CAP,
    &cap.raw, sizeof(cap));
  if (st == DC_OK && cap.bits.MST_CAP == 1)
   mst = 1;
 }
 return mst;

}
