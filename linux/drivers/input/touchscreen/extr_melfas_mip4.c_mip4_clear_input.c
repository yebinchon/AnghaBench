
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mip4_ts {int key_num; int input; int * key_code; } ;


 int MIP4_MAX_FINGERS ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (int ,int ,int ) ;
 int input_mt_slot (int ,int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void mip4_clear_input(struct mip4_ts *ts)
{
 int i;


 for (i = 0; i < MIP4_MAX_FINGERS; i++) {
  input_mt_slot(ts->input, i);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 0);
 }


 for (i = 0; i < ts->key_num; i++)
  input_report_key(ts->input, ts->key_code[i], 0);

 input_sync(ts->input);
}
