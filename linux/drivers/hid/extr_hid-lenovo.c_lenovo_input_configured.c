
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_input {TYPE_1__* input; } ;
struct hid_device {int product; } ;
struct TYPE_2__ {int propbit; int evbit; } ;


 int EV_REL ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_POINTING_STICK ;



 int __set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int lenovo_input_configured(struct hid_device *hdev,
  struct hid_input *hi)
{
 switch (hdev->product) {
  case 128:
  case 129:
  case 130:
   if (test_bit(EV_REL, hi->input->evbit)) {

    __set_bit(INPUT_PROP_POINTER, hi->input->propbit);
    __set_bit(INPUT_PROP_POINTING_STICK,
      hi->input->propbit);
   }
   break;
 }

 return 0;
}
