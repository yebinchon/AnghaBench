
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mxt_data {scalar_t__ T6_reportid; scalar_t__ T9_reportid_min; scalar_t__ T9_reportid_max; scalar_t__ T100_reportid_min; scalar_t__ T100_reportid_max; scalar_t__ T19_reportid; int update_input; int input_dev; } ;


 scalar_t__ MXT_RPTID_NOMSG ;
 int mxt_dump_message (struct mxt_data*,scalar_t__*) ;
 int mxt_input_button (struct mxt_data*,scalar_t__*) ;
 int mxt_proc_t100_message (struct mxt_data*,scalar_t__*) ;
 int mxt_proc_t6_messages (struct mxt_data*,scalar_t__*) ;
 int mxt_proc_t9_message (struct mxt_data*,scalar_t__*) ;

__attribute__((used)) static int mxt_proc_message(struct mxt_data *data, u8 *message)
{
 u8 report_id = message[0];

 if (report_id == MXT_RPTID_NOMSG)
  return 0;

 if (report_id == data->T6_reportid) {
  mxt_proc_t6_messages(data, message);
 } else if (!data->input_dev) {




  mxt_dump_message(data, message);
 } else if (report_id >= data->T9_reportid_min &&
     report_id <= data->T9_reportid_max) {
  mxt_proc_t9_message(data, message);
 } else if (report_id >= data->T100_reportid_min &&
     report_id <= data->T100_reportid_max) {
  mxt_proc_t100_message(data, message);
 } else if (report_id == data->T19_reportid) {
  mxt_input_button(data, message);
  data->update_input = 1;
 } else {
  mxt_dump_message(data, message);
 }

 return 1;
}
