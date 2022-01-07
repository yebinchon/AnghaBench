
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct wacom_wac {scalar_t__ pid; TYPE_1__ features; } ;
struct wacom {struct wacom_wac wacom_wac; struct hid_device* hdev; } ;
struct TYPE_6__ {int version; scalar_t__ product; int vendor; int bustype; } ;
struct TYPE_5__ {int * parent; } ;
struct input_dev {TYPE_3__ id; int uniq; int close; int open; TYPE_2__ dev; int phys; int name; } ;
struct hid_device {int version; scalar_t__ product; int vendor; int bus; int uniq; int dev; int phys; } ;


 struct input_dev* devm_input_allocate_device (int *) ;
 int input_set_drvdata (struct input_dev*,struct wacom*) ;
 int wacom_close ;
 int wacom_open ;

__attribute__((used)) static struct input_dev *wacom_allocate_input(struct wacom *wacom)
{
 struct input_dev *input_dev;
 struct hid_device *hdev = wacom->hdev;
 struct wacom_wac *wacom_wac = &(wacom->wacom_wac);

 input_dev = devm_input_allocate_device(&hdev->dev);
 if (!input_dev)
  return ((void*)0);

 input_dev->name = wacom_wac->features.name;
 input_dev->phys = hdev->phys;
 input_dev->dev.parent = &hdev->dev;
 input_dev->open = wacom_open;
 input_dev->close = wacom_close;
 input_dev->uniq = hdev->uniq;
 input_dev->id.bustype = hdev->bus;
 input_dev->id.vendor = hdev->vendor;
 input_dev->id.product = wacom_wac->pid ? wacom_wac->pid : hdev->product;
 input_dev->id.version = hdev->version;
 input_set_drvdata(input_dev, wacom);

 return input_dev;
}
