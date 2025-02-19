
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_vnic_res_spec {TYPE_1__* resources; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int type; int cnt; } ;


 int USNIC_VNIC_RES_TYPE_MAX ;
 scalar_t__ scnprintf (char*,int,char*,int ,int) ;
 int usnic_vnic_res_type_to_str (int) ;

int usnic_vnic_spec_dump(char *buf, int buf_sz,
    struct usnic_vnic_res_spec *res_spec)
{
 enum usnic_vnic_res_type res_type;
 int res_cnt;
 int i;
 int offset = 0;

 for (i = 0; i < USNIC_VNIC_RES_TYPE_MAX; i++) {
  res_type = res_spec->resources[i].type;
  res_cnt = res_spec->resources[i].cnt;
  offset += scnprintf(buf + offset, buf_sz - offset,
    "Res: %s Cnt: %d ",
    usnic_vnic_res_type_to_str(res_type),
    res_cnt);
 }

 return offset;
}
