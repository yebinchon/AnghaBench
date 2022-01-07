
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usnic_vnic_res_spec {TYPE_1__* resources; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int type; int cnt; } ;


 int USNIC_VNIC_RES_TYPE_MAX ;
 int WARN_ON (int) ;

void usnic_vnic_res_spec_update(struct usnic_vnic_res_spec *spec,
    enum usnic_vnic_res_type trgt_type,
    u16 cnt)
{
 int i;

 for (i = 0; i < USNIC_VNIC_RES_TYPE_MAX; i++) {
  if (spec->resources[i].type == trgt_type) {
   spec->resources[i].cnt = cnt;
   return;
  }
 }

 WARN_ON(1);
}
