
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6sy761_data {int input; } ;


 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void s6sy761_report_release(struct s6sy761_data *sdata,
       u8 *event, u8 tid)
{
 input_mt_slot(sdata->input, tid);
 input_mt_report_slot_state(sdata->input, MT_TOOL_FINGER, 0);

 input_sync(sdata->input);
}
