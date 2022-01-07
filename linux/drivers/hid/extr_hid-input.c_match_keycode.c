
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ type; unsigned int code; } ;


 scalar_t__ EV_KEY ;

__attribute__((used)) static bool match_keycode(struct hid_usage *usage,
     unsigned int cur_idx, unsigned int keycode)
{



 return (usage->type == EV_KEY && usage->code == keycode);
}
