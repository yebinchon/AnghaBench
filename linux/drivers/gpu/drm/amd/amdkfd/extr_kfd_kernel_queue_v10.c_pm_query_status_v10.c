
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int command; int interrupt_sel; scalar_t__ context_id; } ;
struct TYPE_3__ {int u32All; } ;
struct pm4_mes_query_status {void* data_lo; void* data_hi; void* addr_lo; void* addr_hi; TYPE_2__ bitfields2; TYPE_1__ header; } ;
struct packet_manager {int dummy; } ;


 int IT_QUERY_STATUS ;
 int command__mes_query_status__fence_only_after_write_ack ;
 int interrupt_sel__mes_query_status__completion_status ;
 void* lower_32_bits (scalar_t__) ;
 int memset (scalar_t__*,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 void* upper_32_bits (scalar_t__) ;

__attribute__((used)) static int pm_query_status_v10(struct packet_manager *pm, uint32_t *buffer,
   uint64_t fence_address, uint32_t fence_value)
{
 struct pm4_mes_query_status *packet;

 packet = (struct pm4_mes_query_status *)buffer;
 memset(buffer, 0, sizeof(struct pm4_mes_query_status));


 packet->header.u32All = pm_build_pm4_header(IT_QUERY_STATUS,
     sizeof(struct pm4_mes_query_status));

 packet->bitfields2.context_id = 0;
 packet->bitfields2.interrupt_sel =
   interrupt_sel__mes_query_status__completion_status;
 packet->bitfields2.command =
   command__mes_query_status__fence_only_after_write_ack;

 packet->addr_hi = upper_32_bits((uint64_t)fence_address);
 packet->addr_lo = lower_32_bits((uint64_t)fence_address);
 packet->data_hi = upper_32_bits((uint64_t)fence_value);
 packet->data_lo = lower_32_bits((uint64_t)fence_value);

 return 0;
}
