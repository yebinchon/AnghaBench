
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {scalar_t__ T44_address; int object_table; int bl_completion; scalar_t__ in_bootloader; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int mxt_process_messages (struct mxt_data*) ;
 int mxt_process_messages_t44 (struct mxt_data*) ;

__attribute__((used)) static irqreturn_t mxt_interrupt(int irq, void *dev_id)
{
 struct mxt_data *data = dev_id;

 if (data->in_bootloader) {

  complete(&data->bl_completion);
  return IRQ_HANDLED;
 }

 if (!data->object_table)
  return IRQ_HANDLED;

 if (data->T44_address) {
  return mxt_process_messages_t44(data);
 } else {
  return mxt_process_messages(data);
 }
}
