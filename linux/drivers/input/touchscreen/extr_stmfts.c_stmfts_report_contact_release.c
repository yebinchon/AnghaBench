
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmfts_data {int input; } ;


 int MT_TOOL_FINGER ;
 int const STMFTS_MASK_TOUCH_ID ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void stmfts_report_contact_release(struct stmfts_data *sdata,
       const u8 event[])
{
 u8 slot_id = (event[0] & STMFTS_MASK_TOUCH_ID) >> 4;

 input_mt_slot(sdata->input, slot_id);
 input_mt_report_slot_state(sdata->input, MT_TOOL_FINGER, 0);

 input_sync(sdata->input);
}
