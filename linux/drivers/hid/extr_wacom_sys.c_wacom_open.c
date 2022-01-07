
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {int hdev; } ;
struct input_dev {int dummy; } ;


 int hid_hw_open (int ) ;
 struct wacom* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int wacom_open(struct input_dev *dev)
{
 struct wacom *wacom = input_get_drvdata(dev);

 return hid_hw_open(wacom->hdev);
}
