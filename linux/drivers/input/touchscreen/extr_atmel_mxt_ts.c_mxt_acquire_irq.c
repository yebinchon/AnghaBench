
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int irq; } ;


 int enable_irq (int ) ;
 int mxt_process_messages_until_invalid (struct mxt_data*) ;

__attribute__((used)) static int mxt_acquire_irq(struct mxt_data *data)
{
 int error;

 enable_irq(data->irq);

 error = mxt_process_messages_until_invalid(data);
 if (error)
  return error;

 return 0;
}
