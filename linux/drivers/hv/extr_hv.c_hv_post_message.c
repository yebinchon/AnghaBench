
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union hv_connection_id {int dummy; } hv_connection_id ;
typedef int u64 ;
struct hv_per_cpu_context {struct hv_input_post_message* post_msg_page; } ;
struct hv_input_post_message {int message_type; size_t payload_size; scalar_t__ payload; scalar_t__ reserved; union hv_connection_id connectionid; } ;
typedef enum hv_message_type { ____Placeholder_hv_message_type } hv_message_type ;
struct TYPE_2__ {int cpu_context; } ;


 int EMSGSIZE ;
 int HVCALL_POST_MESSAGE ;
 size_t HV_MESSAGE_PAYLOAD_BYTE_COUNT ;
 struct hv_per_cpu_context* get_cpu_ptr (int ) ;
 TYPE_1__ hv_context ;
 int hv_do_hypercall (int ,struct hv_input_post_message*,int *) ;
 int memcpy (void*,void*,size_t) ;
 int put_cpu_ptr (struct hv_per_cpu_context*) ;

int hv_post_message(union hv_connection_id connection_id,
    enum hv_message_type message_type,
    void *payload, size_t payload_size)
{
 struct hv_input_post_message *aligned_msg;
 struct hv_per_cpu_context *hv_cpu;
 u64 status;

 if (payload_size > HV_MESSAGE_PAYLOAD_BYTE_COUNT)
  return -EMSGSIZE;

 hv_cpu = get_cpu_ptr(hv_context.cpu_context);
 aligned_msg = hv_cpu->post_msg_page;
 aligned_msg->connectionid = connection_id;
 aligned_msg->reserved = 0;
 aligned_msg->message_type = message_type;
 aligned_msg->payload_size = payload_size;
 memcpy((void *)aligned_msg->payload, payload, payload_size);

 status = hv_do_hypercall(HVCALL_POST_MESSAGE, aligned_msg, ((void*)0));





 put_cpu_ptr(hv_cpu);

 return status & 0xFFFF;
}
