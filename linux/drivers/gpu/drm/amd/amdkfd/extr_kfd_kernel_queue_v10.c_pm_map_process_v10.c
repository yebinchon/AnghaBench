
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct qcm_process_device {int page_table_base; int tba_addr; int tma_addr; int gds_context_area; int sh_mem_bases; int sh_mem_config; int queue_count; scalar_t__ is_debug; int num_oac; int num_gws; int gds_size; TYPE_4__* pqm; } ;
struct TYPE_10__ {int sdma_enable; int num_queues; int num_oac; int num_gws; int gds_size; } ;
struct TYPE_7__ {int diq_enable; int process_quantum; int pasid; } ;
struct TYPE_6__ {int u32All; } ;
struct pm4_mes_map_process {int sq_shader_tba_hi; int sq_shader_tma_hi; int gds_addr_hi; int vm_context_page_table_base_addr_hi32; void* vm_context_page_table_base_addr_lo32; void* gds_addr_lo; void* sq_shader_tma_lo; void* sq_shader_tba_lo; int sh_mem_bases; int sh_mem_config; TYPE_5__ bitfields14; TYPE_2__ bitfields2; TYPE_1__ header; } ;
struct packet_manager {int dummy; } ;
struct TYPE_9__ {TYPE_3__* process; } ;
struct TYPE_8__ {int pasid; } ;


 int IT_MAP_PROCESS ;
 int SQ_SHADER_TBA_HI__TRAP_EN__SHIFT ;
 void* lower_32_bits (int) ;
 int memset (int *,int ,int) ;
 int pm_build_pm4_header (int ,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int pm_map_process_v10(struct packet_manager *pm,
  uint32_t *buffer, struct qcm_process_device *qpd)
{
 struct pm4_mes_map_process *packet;
 uint64_t vm_page_table_base_addr = qpd->page_table_base;

 packet = (struct pm4_mes_map_process *)buffer;
 memset(buffer, 0, sizeof(struct pm4_mes_map_process));

 packet->header.u32All = pm_build_pm4_header(IT_MAP_PROCESS,
     sizeof(struct pm4_mes_map_process));
 packet->bitfields2.diq_enable = (qpd->is_debug) ? 1 : 0;
 packet->bitfields2.process_quantum = 1;
 packet->bitfields2.pasid = qpd->pqm->process->pasid;
 packet->bitfields14.gds_size = qpd->gds_size;
 packet->bitfields14.num_gws = qpd->num_gws;
 packet->bitfields14.num_oac = qpd->num_oac;
 packet->bitfields14.sdma_enable = 1;

 packet->bitfields14.num_queues = (qpd->is_debug) ? 0 : qpd->queue_count;

 packet->sh_mem_config = qpd->sh_mem_config;
 packet->sh_mem_bases = qpd->sh_mem_bases;
 if (qpd->tba_addr) {
  packet->sq_shader_tba_lo = lower_32_bits(qpd->tba_addr >> 8);
  packet->sq_shader_tba_hi = (1 << SQ_SHADER_TBA_HI__TRAP_EN__SHIFT) |
   upper_32_bits(qpd->tba_addr >> 8);
  packet->sq_shader_tma_lo = lower_32_bits(qpd->tma_addr >> 8);
  packet->sq_shader_tma_hi = upper_32_bits(qpd->tma_addr >> 8);
 }

 packet->gds_addr_lo = lower_32_bits(qpd->gds_context_area);
 packet->gds_addr_hi = upper_32_bits(qpd->gds_context_area);

 packet->vm_context_page_table_base_addr_lo32 =
   lower_32_bits(vm_page_table_base_addr);
 packet->vm_context_page_table_base_addr_hi32 =
   upper_32_bits(vm_page_table_base_addr);

 return 0;
}
