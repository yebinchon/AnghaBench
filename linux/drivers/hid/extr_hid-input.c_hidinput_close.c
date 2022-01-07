
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_device {int dummy; } ;


 int hid_hw_close (struct hid_device*) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void hidinput_close(struct input_dev *dev)
{
 struct hid_device *hid = input_get_drvdata(dev);

 hid_hw_close(hid);
}
