
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_4__ {scalar_t__ latest; } ;
struct TYPE_3__ {scalar_t__ latest; } ;
struct hfi1_pportdata {void* remote_link_down_reason; TYPE_2__ neigh_link_down_reason; TYPE_1__ local_link_down_reason; } ;



void set_link_down_reason(struct hfi1_pportdata *ppd, u8 lcl_reason,
     u8 neigh_reason, u8 rem_reason)
{
 if (ppd->local_link_down_reason.latest == 0 &&
     ppd->neigh_link_down_reason.latest == 0) {
  ppd->local_link_down_reason.latest = lcl_reason;
  ppd->neigh_link_down_reason.latest = neigh_reason;
  ppd->remote_link_down_reason = rem_reason;
 }
}
