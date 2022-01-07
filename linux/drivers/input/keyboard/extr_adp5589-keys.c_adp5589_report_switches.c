
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adp5589_kpad {int gpimapsize; TYPE_1__* gpimap; int input; } ;
struct TYPE_2__ {int pin; int sw_evt; } ;


 int KEY_EV_PRESSED ;
 int input_report_switch (int ,int ,int) ;

__attribute__((used)) static void adp5589_report_switches(struct adp5589_kpad *kpad,
        int key, int key_val)
{
 int i;

 for (i = 0; i < kpad->gpimapsize; i++) {
  if (key_val == kpad->gpimap[i].pin) {
   input_report_switch(kpad->input,
         kpad->gpimap[i].sw_evt,
         key & KEY_EV_PRESSED);
   break;
  }
 }
}
