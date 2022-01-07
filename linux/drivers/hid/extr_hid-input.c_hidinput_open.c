
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;


 int hid_hw_open (struct hid_device*) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int hidinput_open(struct input_dev *dev)
{
 struct hid_device *hid = input_get_drvdata(dev);

 return hid_hw_open(hid);
}
