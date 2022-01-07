
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wtp_data {int dummy; } ;
struct hidpp_device {struct wtp_data* private_data; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct wtp_data* devm_kzalloc (int *,int,int ) ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static int wtp_allocate(struct hid_device *hdev, const struct hid_device_id *id)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);
 struct wtp_data *wd;

 wd = devm_kzalloc(&hdev->dev, sizeof(struct wtp_data),
   GFP_KERNEL);
 if (!wd)
  return -ENOMEM;

 hidpp->private_data = wd;

 return 0;
}
