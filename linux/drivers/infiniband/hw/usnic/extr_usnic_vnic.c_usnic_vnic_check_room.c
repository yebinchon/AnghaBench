
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_vnic_res_spec {TYPE_1__* resources; } ;
struct usnic_vnic {int dummy; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int type; int cnt; } ;


 int EBUSY ;
 int USNIC_VNIC_RES_TYPE_EOL ;
 int USNIC_VNIC_RES_TYPE_MAX ;
 int usnic_vnic_res_free_cnt (struct usnic_vnic*,int) ;

int usnic_vnic_check_room(struct usnic_vnic *vnic,
    struct usnic_vnic_res_spec *res_spec)
{
 int i;
 enum usnic_vnic_res_type res_type;
 int res_cnt;

 for (i = 0; i < USNIC_VNIC_RES_TYPE_MAX; i++) {
  res_type = res_spec->resources[i].type;
  res_cnt = res_spec->resources[i].cnt;

  if (res_type == USNIC_VNIC_RES_TYPE_EOL)
   break;

  if (res_cnt > usnic_vnic_res_free_cnt(vnic, res_type))
   return -EBUSY;
 }

 return 0;
}
