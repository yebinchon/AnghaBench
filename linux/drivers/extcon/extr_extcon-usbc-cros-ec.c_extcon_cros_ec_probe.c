
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device {struct device_node* of_node; int parent; } ;
struct platform_device {int id; struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int notifier_call; } ;
struct cros_ec_extcon_info {int port_id; int pr; TYPE_1__ notifier; struct cros_ec_device* ec; int dr; int edev; struct device* dev; } ;
struct cros_ec_device {int event_notifier; } ;


 int DR_NONE ;
 int ENODEV ;
 int ENOMEM ;
 int EXTCON_DISP_DP ;
 int EXTCON_PROP_DISP_HPD ;
 int EXTCON_PROP_USB_SS ;
 int EXTCON_PROP_USB_TYPEC_POLARITY ;
 int EXTCON_PROP_USB_VBUS ;
 int EXTCON_USB ;
 int EXTCON_USB_HOST ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int blocking_notifier_chain_register (int *,TYPE_1__*) ;
 int blocking_notifier_chain_unregister (int *,TYPE_1__*) ;
 int cros_ec_pd_get_num_ports (struct cros_ec_extcon_info*) ;
 int dev_err (struct device*,char*,...) ;
 struct cros_ec_device* dev_get_drvdata (int ) ;
 int devm_extcon_dev_allocate (struct device*,int ) ;
 int devm_extcon_dev_register (struct device*,int ) ;
 struct cros_ec_extcon_info* devm_kzalloc (struct device*,int,int ) ;
 int extcon_cros_ec_detect_cable (struct cros_ec_extcon_info*,int) ;
 int extcon_cros_ec_event ;
 int extcon_set_property_capability (int ,int ,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct cros_ec_extcon_info*) ;
 int usb_type_c_cable ;

__attribute__((used)) static int extcon_cros_ec_probe(struct platform_device *pdev)
{
 struct cros_ec_extcon_info *info;
 struct cros_ec_device *ec = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 int numports, ret;

 info = devm_kzalloc(dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->dev = dev;
 info->ec = ec;

 if (np) {
  u32 port;

  ret = of_property_read_u32(np, "google,usb-port-id", &port);
  if (ret < 0) {
   dev_err(dev, "Missing google,usb-port-id property\n");
   return ret;
  }
  info->port_id = port;
 } else {
  info->port_id = pdev->id;
 }

 numports = cros_ec_pd_get_num_ports(info);
 if (numports < 0) {
  dev_err(dev, "failed getting number of ports! ret = %d\n",
   numports);
  return numports;
 }

 if (info->port_id >= numports) {
  dev_err(dev, "This system only supports %d ports\n", numports);
  return -ENODEV;
 }

 info->edev = devm_extcon_dev_allocate(dev, usb_type_c_cable);
 if (IS_ERR(info->edev)) {
  dev_err(dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 ret = devm_extcon_dev_register(dev, info->edev);
 if (ret < 0) {
  dev_err(dev, "failed to register extcon device\n");
  return ret;
 }

 extcon_set_property_capability(info->edev, EXTCON_USB,
           EXTCON_PROP_USB_VBUS);
 extcon_set_property_capability(info->edev, EXTCON_USB_HOST,
           EXTCON_PROP_USB_VBUS);
 extcon_set_property_capability(info->edev, EXTCON_USB,
           EXTCON_PROP_USB_TYPEC_POLARITY);
 extcon_set_property_capability(info->edev, EXTCON_USB_HOST,
           EXTCON_PROP_USB_TYPEC_POLARITY);
 extcon_set_property_capability(info->edev, EXTCON_DISP_DP,
           EXTCON_PROP_USB_TYPEC_POLARITY);
 extcon_set_property_capability(info->edev, EXTCON_USB,
           EXTCON_PROP_USB_SS);
 extcon_set_property_capability(info->edev, EXTCON_USB_HOST,
           EXTCON_PROP_USB_SS);
 extcon_set_property_capability(info->edev, EXTCON_DISP_DP,
           EXTCON_PROP_USB_SS);
 extcon_set_property_capability(info->edev, EXTCON_DISP_DP,
           EXTCON_PROP_DISP_HPD);

 info->dr = DR_NONE;
 info->pr = 0;

 platform_set_drvdata(pdev, info);


 info->notifier.notifier_call = extcon_cros_ec_event;
 ret = blocking_notifier_chain_register(&info->ec->event_notifier,
            &info->notifier);
 if (ret < 0) {
  dev_err(dev, "failed to register notifier\n");
  return ret;
 }


 ret = extcon_cros_ec_detect_cable(info, 1);
 if (ret < 0) {
  dev_err(dev, "failed to detect initial cable state\n");
  goto unregister_notifier;
 }

 return 0;

unregister_notifier:
 blocking_notifier_chain_unregister(&info->ec->event_notifier,
        &info->notifier);
 return ret;
}
