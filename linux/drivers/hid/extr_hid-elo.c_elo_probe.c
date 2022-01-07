
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_device_id {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct hid_device {TYPE_1__ dev; } ;
struct elo_priv {int work; int usbdev; } ;


 int ELO_PERIODIC_READ_INTERVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ elo_broken_firmware (int ) ;
 int elo_work ;
 int hid_err (struct hid_device*,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_info (struct hid_device*,char*) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct elo_priv*) ;
 int interface_to_usbdev (int ) ;
 int kfree (struct elo_priv*) ;
 struct elo_priv* kzalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int to_usb_interface (int ) ;
 int wq ;

__attribute__((used)) static int elo_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 struct elo_priv *priv;
 int ret;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 INIT_DELAYED_WORK(&priv->work, elo_work);
 priv->usbdev = interface_to_usbdev(to_usb_interface(hdev->dev.parent));

 hid_set_drvdata(hdev, priv);

 ret = hid_parse(hdev);
 if (ret) {
  hid_err(hdev, "parse failed\n");
  goto err_free;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  hid_err(hdev, "hw start failed\n");
  goto err_free;
 }

 if (elo_broken_firmware(priv->usbdev)) {
  hid_info(hdev, "broken firmware found, installing workaround\n");
  queue_delayed_work(wq, &priv->work, ELO_PERIODIC_READ_INTERVAL);
 }

 return 0;
err_free:
 kfree(priv);
 return ret;
}
