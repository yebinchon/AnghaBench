
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_queue_ops {int submit_packet; int uninitialize; int initialize; } ;


 int initialize_vi ;
 int submit_packet_vi ;
 int uninitialize_vi ;

void kernel_queue_init_vi(struct kernel_queue_ops *ops)
{
 ops->initialize = initialize_vi;
 ops->uninitialize = uninitialize_vi;
 ops->submit_packet = submit_packet_vi;
}
