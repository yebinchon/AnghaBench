
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp4_mt_data {scalar_t__ num_prv_tch; int input; } ;


 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;

__attribute__((used)) static void cyttsp4_report_slot_liftoff(struct cyttsp4_mt_data *md,
  int max_slots)
{
 int t;

 if (md->num_prv_tch == 0)
  return;

 for (t = 0; t < max_slots; t++) {
  input_mt_slot(md->input, t);
  input_mt_report_slot_state(md->input,
   MT_TOOL_FINGER, 0);
 }
}
