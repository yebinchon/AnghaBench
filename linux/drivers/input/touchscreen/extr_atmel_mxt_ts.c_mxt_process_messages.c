
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxt_data {int last_message_count; int max_reportid; int num_touchids; int update_input; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mxt_input_sync (struct mxt_data*) ;
 int mxt_read_and_process_messages (struct mxt_data*,int) ;

__attribute__((used)) static irqreturn_t mxt_process_messages(struct mxt_data *data)
{
 int total_handled, num_handled;
 u8 count = data->last_message_count;

 if (count < 1 || count > data->max_reportid)
  count = 1;


 total_handled = mxt_read_and_process_messages(data, count + 1);
 if (total_handled < 0)
  return IRQ_NONE;

 else if (total_handled <= count)
  goto update_count;


 do {
  num_handled = mxt_read_and_process_messages(data, 2);
  if (num_handled < 0)
   return IRQ_NONE;

  total_handled += num_handled;

  if (num_handled < 2)
   break;
 } while (total_handled < data->num_touchids);

update_count:
 data->last_message_count = total_handled;

 if (data->update_input) {
  mxt_input_sync(data);
  data->update_input = 0;
 }

 return IRQ_HANDLED;
}
