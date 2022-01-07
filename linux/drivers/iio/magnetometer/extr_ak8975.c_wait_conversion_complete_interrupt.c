
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak8975_data {int flags; int data_ready_queue; } ;


 int AK8975_DATA_READY_TIMEOUT ;
 int ETIME ;
 int clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int wait_conversion_complete_interrupt(struct ak8975_data *data)
{
 int ret;

 ret = wait_event_timeout(data->data_ready_queue,
     test_bit(0, &data->flags),
     AK8975_DATA_READY_TIMEOUT);
 clear_bit(0, &data->flags);

 return ret > 0 ? 0 : -ETIME;
}
