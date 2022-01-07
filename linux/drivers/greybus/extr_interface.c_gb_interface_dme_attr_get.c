
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct gb_interface {int interface_id; TYPE_1__* hd; } ;
struct TYPE_2__ {int svc; } ;


 int DME_SELECTOR_INDEX_NULL ;
 int gb_svc_dme_peer_get (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int gb_interface_dme_attr_get(struct gb_interface *intf,
         u16 attr, u32 *val)
{
 return gb_svc_dme_peer_get(intf->hd->svc, intf->interface_id,
     attr, DME_SELECTOR_INDEX_NULL, val);
}
