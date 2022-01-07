
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_queue_ops {int submit_packet; int uninitialize; int initialize; } ;


 int initialize_v9 ;
 int submit_packet_v9 ;
 int uninitialize_v9 ;

void kernel_queue_init_v9(struct kernel_queue_ops *ops)
{
 ops->initialize = initialize_v9;
 ops->uninitialize = uninitialize_v9;
 ops->submit_packet = submit_packet_v9;
}
