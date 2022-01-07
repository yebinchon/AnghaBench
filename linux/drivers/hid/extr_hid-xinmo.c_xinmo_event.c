
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int code; int type; } ;
struct hid_field {TYPE_1__* hidinput; } ;
struct hid_device {int dummy; } ;
typedef int __s32 ;
struct TYPE_2__ {int input; } ;






 int input_event (int ,int ,int,int) ;

__attribute__((used)) static int xinmo_event(struct hid_device *hdev, struct hid_field *field,
  struct hid_usage *usage, __s32 value)
{
 switch (usage->code) {
 case 130:
 case 129:
 case 128:
 case 131:
  if (value < -1) {
   input_event(field->hidinput->input, usage->type,
    usage->code, -1);
   return 1;
  }
  break;
 }

 return 0;
}
