
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_queue_ops {int submit_packet; int uninitialize; int initialize; } ;


 int initialize_cik ;
 int submit_packet_cik ;
 int uninitialize_cik ;

void kernel_queue_init_cik(struct kernel_queue_ops *ops)
{
 ops->initialize = initialize_cik;
 ops->uninitialize = uninitialize_cik;
 ops->submit_packet = submit_packet_cik;
}
