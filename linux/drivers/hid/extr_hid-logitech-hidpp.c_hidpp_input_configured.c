
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hidpp_device {int dummy; } ;
struct hid_input {struct input_dev* input; } ;
struct hid_device {int dummy; } ;


 struct hidpp_device* hid_get_drvdata (struct hid_device*) ;
 int hidpp_populate_input (struct hidpp_device*,struct input_dev*) ;

__attribute__((used)) static int hidpp_input_configured(struct hid_device *hdev,
    struct hid_input *hidinput)
{
 struct hidpp_device *hidpp = hid_get_drvdata(hdev);
 struct input_dev *input = hidinput->input;

 if (!hidpp)
  return 0;

 hidpp_populate_input(hidpp, input);

 return 0;
}
