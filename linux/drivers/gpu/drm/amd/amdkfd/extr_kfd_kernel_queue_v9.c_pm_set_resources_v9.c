
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct scheduling_resources {int queue_mask; int gws_mask; int gds_heap_size; int gds_heap_base; int oac_mask; int vmid_mask; } ;
struct TYPE_8__ {int gds_heap_size; int gds_heap_base; } ;
struct TYPE_7__ {int oac_mask; } ;
struct TYPE_6__ {int unmap_latency; int vmid_mask; int queue_type; } ;
struct TYPE_5__ {int u32All; } ;
struct pm4_mes_set_resources {void* queue_mask_hi; void* queue_mask_lo; void* gws_mask_hi; void* gws_mask_lo; TYPE_4__ bitfields8; TYPE_3__ bitfields7; TYPE_2__ bitfields2; TYPE_1__ header; } ;
struct packet_manager {int dummy; } ;


 int IT_SET_RESOURCES ;
 int KFD_UNMAP_LATENCY_MS ;
 void* lower_32_bits (int ) ;
 int memset (int *,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 int queue_type__mes_set_resources__hsa_interface_queue_hiq ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int pm_set_resources_v9(struct packet_manager *pm, uint32_t *buffer,
    struct scheduling_resources *res)
{
 struct pm4_mes_set_resources *packet;

 packet = (struct pm4_mes_set_resources *)buffer;
 memset(buffer, 0, sizeof(struct pm4_mes_set_resources));

 packet->header.u32All = pm_build_pm4_header(IT_SET_RESOURCES,
     sizeof(struct pm4_mes_set_resources));

 packet->bitfields2.queue_type =
   queue_type__mes_set_resources__hsa_interface_queue_hiq;
 packet->bitfields2.vmid_mask = res->vmid_mask;
 packet->bitfields2.unmap_latency = KFD_UNMAP_LATENCY_MS / 100;
 packet->bitfields7.oac_mask = res->oac_mask;
 packet->bitfields8.gds_heap_base = res->gds_heap_base;
 packet->bitfields8.gds_heap_size = res->gds_heap_size;

 packet->gws_mask_lo = lower_32_bits(res->gws_mask);
 packet->gws_mask_hi = upper_32_bits(res->gws_mask);

 packet->queue_mask_lo = lower_32_bits(res->queue_mask);
 packet->queue_mask_hi = upper_32_bits(res->queue_mask);

 return 0;
}
