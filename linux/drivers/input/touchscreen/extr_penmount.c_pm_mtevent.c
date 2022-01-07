
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pm {int maxcontacts; TYPE_1__* slots; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int y; int x; scalar_t__ active; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int EV_ABS ;
 int MT_TOOL_FINGER ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_mt_report_slot_state (struct input_dev*,int ,scalar_t__) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void pm_mtevent(struct pm *pm, struct input_dev *input)
{
 int i;

 for (i = 0; i < pm->maxcontacts; ++i) {
  input_mt_slot(input, i);
  input_mt_report_slot_state(input, MT_TOOL_FINGER,
    pm->slots[i].active);
  if (pm->slots[i].active) {
   input_event(input, EV_ABS, ABS_MT_POSITION_X, pm->slots[i].x);
   input_event(input, EV_ABS, ABS_MT_POSITION_Y, pm->slots[i].y);
  }
 }

 input_mt_report_pointer_emulation(input, 1);
 input_sync(input);
}
