
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_8__ {int type; scalar_t__ write_ptr; int doorbell_off; scalar_t__ sdma_engine_id; } ;
struct queue {TYPE_4__ properties; int gart_mqd_addr; } ;
struct TYPE_7__ {int doorbell_offset; } ;
struct TYPE_6__ {int num_queues; scalar_t__ engine_sel; int queue_type; int queue_sel; } ;
struct TYPE_5__ {int u32All; } ;
struct pm4_mes_map_queues {void* wptr_addr_hi; void* wptr_addr_lo; void* mqd_addr_hi; void* mqd_addr_lo; TYPE_3__ bitfields3; TYPE_2__ bitfields2; TYPE_1__ header; } ;
struct packet_manager {int dummy; } ;


 int EINVAL ;
 int IT_MAP_QUEUES ;




 int WARN (int,char*,int) ;
 scalar_t__ engine_sel__mes_map_queues__compute_vi ;
 scalar_t__ engine_sel__mes_map_queues__sdma0_vi ;
 void* lower_32_bits (int ) ;
 int memset (int *,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 int queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi ;
 int queue_type__mes_map_queues__debug_interface_queue_vi ;
 int queue_type__mes_map_queues__normal_compute_vi ;
 int queue_type__mes_map_queues__normal_latency_static_queue_vi ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int pm_map_queues_vi(struct packet_manager *pm, uint32_t *buffer,
  struct queue *q, bool is_static)
{
 struct pm4_mes_map_queues *packet;
 bool use_static = is_static;

 packet = (struct pm4_mes_map_queues *)buffer;
 memset(buffer, 0, sizeof(struct pm4_mes_map_queues));

 packet->header.u32All = pm_build_pm4_header(IT_MAP_QUEUES,
     sizeof(struct pm4_mes_map_queues));
 packet->bitfields2.num_queues = 1;
 packet->bitfields2.queue_sel =
  queue_sel__mes_map_queues__map_to_hws_determined_queue_slots_vi;

 packet->bitfields2.engine_sel =
  engine_sel__mes_map_queues__compute_vi;
 packet->bitfields2.queue_type =
  queue_type__mes_map_queues__normal_compute_vi;

 switch (q->properties.type) {
 case 131:
  if (use_static)
   packet->bitfields2.queue_type =
  queue_type__mes_map_queues__normal_latency_static_queue_vi;
  break;
 case 130:
  packet->bitfields2.queue_type =
   queue_type__mes_map_queues__debug_interface_queue_vi;
  break;
 case 129:
 case 128:
  packet->bitfields2.engine_sel = q->properties.sdma_engine_id +
    engine_sel__mes_map_queues__sdma0_vi;
  use_static = 0;
  break;
 default:
  WARN(1, "queue type %d", q->properties.type);
  return -EINVAL;
 }
 packet->bitfields3.doorbell_offset =
   q->properties.doorbell_off;

 packet->mqd_addr_lo =
   lower_32_bits(q->gart_mqd_addr);

 packet->mqd_addr_hi =
   upper_32_bits(q->gart_mqd_addr);

 packet->wptr_addr_lo =
   lower_32_bits((uint64_t)q->properties.write_ptr);

 packet->wptr_addr_hi =
   upper_32_bits((uint64_t)q->properties.write_ptr);

 return 0;
}
