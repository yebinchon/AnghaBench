
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adbhid {int flags; int* keycode; int input; } ;



 int ADB_KEY_CMD ;


 int ADB_KEY_FWDEL ;


 int FLAG_CAPSLOCK_DOWN ;
 int FLAG_CAPSLOCK_IGNORE_NEXT ;
 int FLAG_CAPSLOCK_TRANSLATE ;
 int FLAG_EMU_FWDEL_DOWN ;
 int FLAG_FN_KEY_PRESSED ;
 int FLAG_POWER_FROM_FN ;
 int FLAG_POWER_KEY_PRESSED ;
 int KEY_CAPSLOCK ;
 int PMAC_FTR_GET_MB_INFO ;
 int PMAC_MB_INFO_MODEL ;



 struct adbhid** adbhid ;
 int input_report_key (int ,int,int) ;
 int input_sync (int ) ;
 int pmac_call_feature (int ,int *,int ,int ) ;
 int pr_info (char*,...) ;
 scalar_t__ restore_capslock_events ;

__attribute__((used)) static void
adbhid_input_keycode(int id, int scancode, int repeat)
{
 struct adbhid *ahid = adbhid[id];
 int keycode, up_flag, key;

 keycode = scancode & 0x7f;
 up_flag = scancode & 0x80;

 if (restore_capslock_events) {
  if (keycode == 135 && !up_flag) {


   if (ahid->flags & FLAG_CAPSLOCK_IGNORE_NEXT) {


    ahid->flags &= ~FLAG_CAPSLOCK_IGNORE_NEXT;
    return;
   } else {
    ahid->flags |= FLAG_CAPSLOCK_TRANSLATE
     | FLAG_CAPSLOCK_DOWN;
   }
  } else if (scancode == 0xff &&
      !(ahid->flags & FLAG_POWER_KEY_PRESSED)) {



   if (ahid->flags & FLAG_CAPSLOCK_TRANSLATE) {
    keycode = 135;
    if (ahid->flags & FLAG_CAPSLOCK_DOWN) {

     up_flag = 1;
     ahid->flags &= ~FLAG_CAPSLOCK_DOWN;
    } else {

     up_flag = 0;
     ahid->flags &= ~FLAG_CAPSLOCK_TRANSLATE;
    }
   } else {
    pr_info("Spurious caps lock event (scancode 0xff).\n");
   }
  }
 }

 switch (keycode) {
 case 135:
  if (!restore_capslock_events) {

   input_report_key(ahid->input, KEY_CAPSLOCK, 1);
   input_sync(ahid->input);
   input_report_key(ahid->input, KEY_CAPSLOCK, 0);
   input_sync(ahid->input);
   return;
  }
  break;
 }

 key = adbhid[id]->keycode[keycode];
 if (key) {
  input_report_key(adbhid[id]->input, key, !up_flag);
  input_sync(adbhid[id]->input);
 } else
  pr_info("Unhandled ADB key (scancode %#02x) %s.\n", keycode,
   up_flag ? "released" : "pressed");

}
