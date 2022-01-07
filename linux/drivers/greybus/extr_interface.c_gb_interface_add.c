
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int type; int ddbl1_product_id; int ddbl1_manufacturer_id; int dev; int product_id; int vendor_id; } ;




 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,...) ;
 int device_add (int *) ;
 int gb_interface_type_string (struct gb_interface*) ;
 int trace_gb_interface_add (struct gb_interface*) ;

int gb_interface_add(struct gb_interface *intf)
{
 int ret;

 ret = device_add(&intf->dev);
 if (ret) {
  dev_err(&intf->dev, "failed to register interface: %d\n", ret);
  return ret;
 }

 trace_gb_interface_add(intf);

 dev_info(&intf->dev, "Interface added (%s)\n",
   gb_interface_type_string(intf));

 switch (intf->type) {
 case 129:
  dev_info(&intf->dev, "GMP VID=0x%08x, PID=0x%08x\n",
    intf->vendor_id, intf->product_id);

 case 128:
  dev_info(&intf->dev, "DDBL1 Manufacturer=0x%08x, Product=0x%08x\n",
    intf->ddbl1_manufacturer_id,
    intf->ddbl1_product_id);
  break;
 default:
  break;
 }

 return 0;
}
