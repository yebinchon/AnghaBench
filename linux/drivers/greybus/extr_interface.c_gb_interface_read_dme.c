
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int dme_read; scalar_t__ ddbl1_manufacturer_id; scalar_t__ ddbl1_product_id; int quirks; } ;


 int DME_DDBL1_MANUFACTURERID ;
 int DME_DDBL1_PRODUCTID ;
 int GB_INTERFACE_QUIRK_NO_GMP_IDS ;
 int GB_INTERFACE_QUIRK_NO_INIT_STATUS ;
 scalar_t__ TOSHIBA_DMID ;
 scalar_t__ TOSHIBA_ES2_BRIDGE_DPID ;
 int gb_interface_dme_attr_get (struct gb_interface*,int ,scalar_t__*) ;
 int gb_interface_read_ara_dme (struct gb_interface*) ;

__attribute__((used)) static int gb_interface_read_dme(struct gb_interface *intf)
{
 int ret;


 if (intf->dme_read)
  return 0;

 ret = gb_interface_dme_attr_get(intf, DME_DDBL1_MANUFACTURERID,
     &intf->ddbl1_manufacturer_id);
 if (ret)
  return ret;

 ret = gb_interface_dme_attr_get(intf, DME_DDBL1_PRODUCTID,
     &intf->ddbl1_product_id);
 if (ret)
  return ret;

 if (intf->ddbl1_manufacturer_id == TOSHIBA_DMID &&
     intf->ddbl1_product_id == TOSHIBA_ES2_BRIDGE_DPID) {
  intf->quirks |= GB_INTERFACE_QUIRK_NO_GMP_IDS;
  intf->quirks |= GB_INTERFACE_QUIRK_NO_INIT_STATUS;
 }

 ret = gb_interface_read_ara_dme(intf);
 if (ret)
  return ret;

 intf->dme_read = 1;

 return 0;
}
