
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cyttsp4_final_sync(struct input_dev *input, int max_slots, int *ids)
{
 int t;

 for (t = 0; t < max_slots; t++) {
  if (ids[t])
   continue;
  input_mt_slot(input, t);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, 0);
 }

 input_sync(input);
}
