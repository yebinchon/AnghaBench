
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * parent; } ;
struct TYPE_3__ {int version; int product; int vendor; int bustype; } ;
struct input_dev {TYPE_2__ dev; TYPE_1__ id; int uniq; int phys; int name; int close; int open; } ;
struct hidpp_device {int name; } ;
struct hid_device {int dev; int version; int product; int vendor; int bus; int uniq; int phys; } ;


 struct input_dev* devm_input_allocate_device (int *) ;
 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int hidpp_input_close ;
 int hidpp_input_open ;
 int input_set_drvdata (struct input_dev*,struct hid_device*) ;

__attribute__((used)) static struct input_dev *hidpp_allocate_input(struct hid_device *hdev)
{
 struct input_dev *input_dev = devm_input_allocate_device(&hdev->dev);
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);

 if (!input_dev)
  return ((void*)0);

 input_set_drvdata(input_dev, hdev);
 input_dev->open = hidpp_input_open;
 input_dev->close = hidpp_input_close;

 input_dev->name = hidpp->name;
 input_dev->phys = hdev->phys;
 input_dev->uniq = hdev->uniq;
 input_dev->id.bustype = hdev->bus;
 input_dev->id.vendor = hdev->vendor;
 input_dev->id.product = hdev->product;
 input_dev->id.version = hdev->version;
 input_dev->dev.parent = &hdev->dev;

 return input_dev;
}
