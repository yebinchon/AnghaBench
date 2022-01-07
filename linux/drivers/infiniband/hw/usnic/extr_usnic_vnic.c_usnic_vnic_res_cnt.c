
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usnic_vnic {TYPE_1__* chunks; } ;
typedef enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int cnt; } ;



int usnic_vnic_res_cnt(struct usnic_vnic *vnic,
    enum usnic_vnic_res_type type)
{
 return vnic->chunks[type].cnt;
}
