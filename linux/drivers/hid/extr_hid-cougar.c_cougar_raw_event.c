
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct cougar_shared {int input; int enabled; } ;
struct cougar {int special_intf; struct cougar_shared* shared; } ;


 size_t COUGAR_FIELD_ACTION ;
 size_t COUGAR_FIELD_CODE ;
 int EPERM ;
 int EV_KEY ;
 char** cougar_mapping ;
 struct cougar* hid_get_drvdata (struct hid_device*) ;
 int hid_warn (struct hid_device*,char*,unsigned char) ;
 int input_event (int ,int ,char,unsigned char) ;
 int input_sync (int ) ;

__attribute__((used)) static int cougar_raw_event(struct hid_device *hdev, struct hid_report *report,
       u8 *data, int size)
{
 struct cougar *cougar;
 struct cougar_shared *shared;
 unsigned char code, action;
 int i;

 cougar = hid_get_drvdata(hdev);
 shared = cougar->shared;
 if (!cougar->special_intf || !shared)
  return 0;

 if (!shared->enabled || !shared->input)
  return -EPERM;

 code = data[COUGAR_FIELD_CODE];
 action = data[COUGAR_FIELD_ACTION];
 for (i = 0; cougar_mapping[i][0]; i++) {
  if (code == cougar_mapping[i][0]) {
   input_event(shared->input, EV_KEY,
        cougar_mapping[i][1], action);
   input_sync(shared->input);
   return -EPERM;
  }
 }

 if (action != 0)
  hid_warn(hdev, "unmapped special key code %0x: ignoring\n", code);
 return -EPERM;
}
