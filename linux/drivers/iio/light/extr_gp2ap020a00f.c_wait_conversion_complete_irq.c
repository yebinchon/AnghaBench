
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gp2ap020a00f_data {int flags; int data_ready_queue; } ;


 int ETIME ;
 int GP2AP020A00F_DATA_READY_TIMEOUT ;
 int GP2AP020A00F_FLAG_DATA_READY ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int wait_conversion_complete_irq(struct gp2ap020a00f_data *data)
{
 int ret;

 ret = wait_event_timeout(data->data_ready_queue,
     test_bit(GP2AP020A00F_FLAG_DATA_READY,
       &data->flags),
     GP2AP020A00F_DATA_READY_TIMEOUT);
 clear_bit(GP2AP020A00F_FLAG_DATA_READY, &data->flags);

 return ret > 0 ? 0 : -ETIME;
}
