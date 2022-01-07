
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_8__ {unsigned int engine_sel; int num_queues; int queue_sel; int action; void* extended_engine_sel; } ;
struct TYPE_7__ {void* pasid; } ;
struct TYPE_6__ {void* doorbell_offset0; } ;
struct TYPE_5__ {int u32All; } ;
struct pm4_mes_unmap_queues {TYPE_4__ bitfields2; TYPE_3__ bitfields3a; TYPE_2__ bitfields3b; TYPE_1__ header; } ;
struct packet_manager {int dummy; } ;
typedef enum kfd_unmap_queues_filter { ____Placeholder_kfd_unmap_queues_filter } kfd_unmap_queues_filter ;
typedef enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;


 int EINVAL ;
 int IT_UNMAP_QUEUES ;
 int WARN (int,char*,int) ;
 int action__mes_unmap_queues__preempt_queues ;
 int action__mes_unmap_queues__reset_queues ;
 unsigned int engine_sel__mes_unmap_queues__compute ;
 int engine_sel__mes_unmap_queues__sdma0 ;
 void* extended_engine_sel__mes_unmap_queues__legacy_engine_sel ;
 void* extended_engine_sel__mes_unmap_queues__sdma0_to_7_sel ;
 int memset (void**,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 int queue_sel__mes_unmap_queues__perform_request_on_pasid_queues ;
 int queue_sel__mes_unmap_queues__perform_request_on_specified_queues ;
 int queue_sel__mes_unmap_queues__unmap_all_non_static_queues ;
 int queue_sel__mes_unmap_queues__unmap_all_queues ;

__attribute__((used)) static int pm_unmap_queues_v9(struct packet_manager *pm, uint32_t *buffer,
   enum kfd_queue_type type,
   enum kfd_unmap_queues_filter filter,
   uint32_t filter_param, bool reset,
   unsigned int sdma_engine)
{
 struct pm4_mes_unmap_queues *packet;

 packet = (struct pm4_mes_unmap_queues *)buffer;
 memset(buffer, 0, sizeof(struct pm4_mes_unmap_queues));

 packet->header.u32All = pm_build_pm4_header(IT_UNMAP_QUEUES,
     sizeof(struct pm4_mes_unmap_queues));
 switch (type) {
 case 135:
 case 134:
  packet->bitfields2.extended_engine_sel =
   extended_engine_sel__mes_unmap_queues__legacy_engine_sel;
  packet->bitfields2.engine_sel =
   engine_sel__mes_unmap_queues__compute;
  break;
 case 133:
 case 132:
  if (sdma_engine < 2) {
   packet->bitfields2.extended_engine_sel =
    extended_engine_sel__mes_unmap_queues__legacy_engine_sel;
   packet->bitfields2.engine_sel =
    engine_sel__mes_unmap_queues__sdma0 + sdma_engine;
  } else {
   packet->bitfields2.extended_engine_sel =
    extended_engine_sel__mes_unmap_queues__sdma0_to_7_sel;
   packet->bitfields2.engine_sel = sdma_engine;
  }
  break;
 default:
  WARN(1, "queue type %d", type);
  return -EINVAL;
 }

 if (reset)
  packet->bitfields2.action =
   action__mes_unmap_queues__reset_queues;
 else
  packet->bitfields2.action =
   action__mes_unmap_queues__preempt_queues;

 switch (filter) {
 case 128:
  packet->bitfields2.queue_sel =
   queue_sel__mes_unmap_queues__perform_request_on_specified_queues;
  packet->bitfields2.num_queues = 1;
  packet->bitfields3b.doorbell_offset0 = filter_param;
  break;
 case 130:
  packet->bitfields2.queue_sel =
   queue_sel__mes_unmap_queues__perform_request_on_pasid_queues;
  packet->bitfields3a.pasid = filter_param;
  break;
 case 131:
  packet->bitfields2.queue_sel =
   queue_sel__mes_unmap_queues__unmap_all_queues;
  break;
 case 129:

  packet->bitfields2.queue_sel =
   queue_sel__mes_unmap_queues__unmap_all_non_static_queues;
  break;
 default:
  WARN(1, "filter %d", filter);
  return -EINVAL;
 }

 return 0;

}
