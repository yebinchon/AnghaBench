
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manifest_desc {struct greybus_descriptor_interface* data; } ;
struct greybus_descriptor_interface {int features; int product_stringid; int vendor_stringid; } ;
struct gb_interface {int dev; int features; struct gb_control* control; } ;
struct gb_control {char* vendor_string; char* product_string; } ;


 scalar_t__ IS_ERR (char*) ;
 int dev_err (int *,char*) ;
 int gb_manifest_parse_bundles (struct gb_interface*) ;
 char* gb_string_get (struct gb_interface*,int ) ;
 int kfree (char*) ;
 int release_manifest_descriptor (struct manifest_desc*) ;

__attribute__((used)) static bool gb_manifest_parse_interface(struct gb_interface *intf,
     struct manifest_desc *interface_desc)
{
 struct greybus_descriptor_interface *desc_intf = interface_desc->data;
 struct gb_control *control = intf->control;
 char *str;


 str = gb_string_get(intf, desc_intf->vendor_stringid);
 if (IS_ERR(str))
  return 0;
 control->vendor_string = str;

 str = gb_string_get(intf, desc_intf->product_stringid);
 if (IS_ERR(str))
  goto out_free_vendor_string;
 control->product_string = str;


 intf->features = desc_intf->features;


 release_manifest_descriptor(interface_desc);


 if (!gb_manifest_parse_bundles(intf)) {
  dev_err(&intf->dev, "manifest bundle descriptors not valid\n");
  goto out_err;
 }

 return 1;
out_err:
 kfree(control->product_string);
 control->product_string = ((void*)0);
out_free_vendor_string:
 kfree(control->vendor_string);
 control->vendor_string = ((void*)0);

 return 0;
}
