
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int version; int product; int vendor; int bustype; } ;
struct TYPE_3__ {int * parent; } ;
struct input_dev {char const* name; TYPE_2__ id; int uniq; int close; int open; TYPE_1__ dev; int phys; } ;
struct hid_device {int version; int product; int vendor; int bus; int uniq; int dev; int phys; } ;


 struct input_dev* devm_input_allocate_device (int *) ;
 int hid_get_drvdata (struct hid_device*) ;
 int input_set_drvdata (struct input_dev*,int ) ;
 int udraw_close ;
 int udraw_open ;

__attribute__((used)) static struct input_dev *allocate_and_setup(struct hid_device *hdev,
  const char *name)
{
 struct input_dev *input_dev;

 input_dev = devm_input_allocate_device(&hdev->dev);
 if (!input_dev)
  return ((void*)0);

 input_dev->name = name;
 input_dev->phys = hdev->phys;
 input_dev->dev.parent = &hdev->dev;
 input_dev->open = udraw_open;
 input_dev->close = udraw_close;
 input_dev->uniq = hdev->uniq;
 input_dev->id.bustype = hdev->bus;
 input_dev->id.vendor = hdev->vendor;
 input_dev->id.product = hdev->product;
 input_dev->id.version = hdev->version;
 input_set_drvdata(input_dev, hid_get_drvdata(hdev));

 return input_dev;
}
