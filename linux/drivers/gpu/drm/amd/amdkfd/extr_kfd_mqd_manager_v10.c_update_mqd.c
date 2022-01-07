
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct v10_compute_mqd {int cp_hqd_pq_control; int cp_hqd_pq_doorbell_control; int cp_hqd_ib_control; scalar_t__ cp_hqd_ctx_save_control; int cp_hqd_vmid; scalar_t__ cp_hqd_iq_timer; void* cp_hqd_eop_base_addr_hi; void* cp_hqd_eop_base_addr_lo; int cp_hqd_eop_control; void* cp_hqd_pq_wptr_poll_addr_hi; void* cp_hqd_pq_wptr_poll_addr_lo; void* cp_hqd_pq_rptr_report_addr_hi; void* cp_hqd_pq_rptr_report_addr_lo; void* cp_hqd_pq_base_hi; void* cp_hqd_pq_base_lo; } ;
struct queue_properties {int queue_size; scalar_t__ queue_address; int doorbell_off; int eop_ring_buffer_size; int eop_ring_buffer_address; scalar_t__ format; int is_active; scalar_t__ queue_percent; int is_evicted; int vmid; scalar_t__ write_ptr; scalar_t__ read_ptr; } ;
struct mqd_manager {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ cwsr_enabled; } ;


 int CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT ;
 int CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK ;
 int CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT ;
 int CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT ;
 int CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT ;
 int CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT ;
 int CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT ;
 scalar_t__ KFD_QUEUE_FORMAT_AQL ;
 int ffs (int) ;
 struct v10_compute_mqd* get_mqd (void*) ;
 void* lower_32_bits (int) ;
 int min (int,int) ;
 int pr_debug (char*,int) ;
 int update_cu_mask (struct mqd_manager*,void*,struct queue_properties*) ;
 void* upper_32_bits (int) ;

__attribute__((used)) static void update_mqd(struct mqd_manager *mm, void *mqd,
        struct queue_properties *q)
{
 struct v10_compute_mqd *m;

 m = get_mqd(mqd);

 m->cp_hqd_pq_control = 5 << CP_HQD_PQ_CONTROL__RPTR_BLOCK_SIZE__SHIFT;
 m->cp_hqd_pq_control |=
   ffs(q->queue_size / sizeof(unsigned int)) - 1 - 1;
 pr_debug("cp_hqd_pq_control 0x%x\n", m->cp_hqd_pq_control);

 m->cp_hqd_pq_base_lo = lower_32_bits((uint64_t)q->queue_address >> 8);
 m->cp_hqd_pq_base_hi = upper_32_bits((uint64_t)q->queue_address >> 8);

 m->cp_hqd_pq_rptr_report_addr_lo = lower_32_bits((uint64_t)q->read_ptr);
 m->cp_hqd_pq_rptr_report_addr_hi = upper_32_bits((uint64_t)q->read_ptr);
 m->cp_hqd_pq_wptr_poll_addr_lo = lower_32_bits((uint64_t)q->write_ptr);
 m->cp_hqd_pq_wptr_poll_addr_hi = upper_32_bits((uint64_t)q->write_ptr);

 m->cp_hqd_pq_doorbell_control =
  q->doorbell_off <<
   CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_OFFSET__SHIFT;
 pr_debug("cp_hqd_pq_doorbell_control 0x%x\n",
   m->cp_hqd_pq_doorbell_control);

 m->cp_hqd_ib_control = 3 << CP_HQD_IB_CONTROL__MIN_IB_AVAIL_SIZE__SHIFT;
 m->cp_hqd_eop_control = min(0xA,
  ffs(q->eop_ring_buffer_size / sizeof(unsigned int)) - 1 - 1);
 m->cp_hqd_eop_base_addr_lo =
   lower_32_bits(q->eop_ring_buffer_address >> 8);
 m->cp_hqd_eop_base_addr_hi =
   upper_32_bits(q->eop_ring_buffer_address >> 8);

 m->cp_hqd_iq_timer = 0;

 m->cp_hqd_vmid = q->vmid;

 if (q->format == KFD_QUEUE_FORMAT_AQL) {

  m->cp_hqd_pq_control |= CP_HQD_PQ_CONTROL__NO_UPDATE_RPTR_MASK |
    2 << CP_HQD_PQ_CONTROL__SLOT_BASED_WPTR__SHIFT |
    1 << CP_HQD_PQ_CONTROL__QUEUE_FULL_EN__SHIFT ;
  m->cp_hqd_pq_doorbell_control |=
   1 << CP_HQD_PQ_DOORBELL_CONTROL__DOORBELL_BIF_DROP__SHIFT;
 }
 if (mm->dev->cwsr_enabled)
  m->cp_hqd_ctx_save_control = 0;

 update_cu_mask(mm, mqd, q);

 q->is_active = (q->queue_size > 0 &&
   q->queue_address != 0 &&
   q->queue_percent > 0 &&
   !q->is_evicted);
}
