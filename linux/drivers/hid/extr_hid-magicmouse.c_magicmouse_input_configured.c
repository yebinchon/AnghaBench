
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magicmouse_sc {int * input; } ;
struct hid_input {int dummy; } ;
struct hid_device {int dummy; } ;


 int hid_err (struct hid_device*,char*,int) ;
 struct magicmouse_sc* hid_get_drvdata (struct hid_device*) ;
 int magicmouse_setup_input (int *,struct hid_device*) ;

__attribute__((used)) static int magicmouse_input_configured(struct hid_device *hdev,
  struct hid_input *hi)

{
 struct magicmouse_sc *msc = hid_get_drvdata(hdev);
 int ret;

 ret = magicmouse_setup_input(msc->input, hdev);
 if (ret) {
  hid_err(hdev, "magicmouse setup input failed (%d)\n", ret);

  msc->input = ((void*)0);
  return ret;
 }

 return 0;
}
