
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom {scalar_t__ hdev; } ;
struct input_dev {int dummy; } ;


 int hid_hw_close (scalar_t__) ;
 struct wacom* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void wacom_close(struct input_dev *dev)
{
 struct wacom *wacom = input_get_drvdata(dev);





 if (wacom->hdev)
  hid_hw_close(wacom->hdev);
}
