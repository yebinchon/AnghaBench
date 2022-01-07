
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct queue_properties {int queue_size; scalar_t__ format; int is_active; int vmid; int doorbell_off; scalar_t__ read_ptr; scalar_t__ queue_address; } ;
struct mqd_manager {int dummy; } ;
struct cik_mqd {int cp_hqd_pq_control; int cp_hqd_vmid; int cp_hqd_pq_doorbell_control; void* cp_hqd_pq_rptr_report_addr_hi; void* cp_hqd_pq_rptr_report_addr_lo; void* cp_hqd_pq_base_hi; void* cp_hqd_pq_base_lo; int cp_hqd_ib_control; } ;


 int DEFAULT_MIN_AVAIL_SIZE ;
 int DEFAULT_MIN_IB_AVAIL_SIZE ;
 int DEFAULT_RPTR_BLOCK_SIZE ;
 int DOORBELL_OFFSET (int ) ;
 int IB_ATC_EN ;
 scalar_t__ KFD_QUEUE_FORMAT_AQL ;
 int NO_UPDATE_RPTR ;
 int PQ_ATC_EN ;
 int QUEUE_IS_ACTIVE (struct queue_properties) ;
 struct cik_mqd* get_mqd (void*) ;
 void* lower_32_bits (int) ;
 int order_base_2 (int) ;
 int set_priority (struct cik_mqd*,struct queue_properties*) ;
 int update_cu_mask (struct mqd_manager*,void*,struct queue_properties*) ;
 void* upper_32_bits (int) ;

__attribute__((used)) static void __update_mqd(struct mqd_manager *mm, void *mqd,
   struct queue_properties *q, unsigned int atc_bit)
{
 struct cik_mqd *m;

 m = get_mqd(mqd);
 m->cp_hqd_pq_control = DEFAULT_RPTR_BLOCK_SIZE |
    DEFAULT_MIN_AVAIL_SIZE;
 m->cp_hqd_ib_control = DEFAULT_MIN_IB_AVAIL_SIZE;
 if (atc_bit) {
  m->cp_hqd_pq_control |= PQ_ATC_EN;
  m->cp_hqd_ib_control |= IB_ATC_EN;
 }





 m->cp_hqd_pq_control |= order_base_2(q->queue_size / 4) - 1;
 m->cp_hqd_pq_base_lo = lower_32_bits((uint64_t)q->queue_address >> 8);
 m->cp_hqd_pq_base_hi = upper_32_bits((uint64_t)q->queue_address >> 8);
 m->cp_hqd_pq_rptr_report_addr_lo = lower_32_bits((uint64_t)q->read_ptr);
 m->cp_hqd_pq_rptr_report_addr_hi = upper_32_bits((uint64_t)q->read_ptr);
 m->cp_hqd_pq_doorbell_control = DOORBELL_OFFSET(q->doorbell_off);

 m->cp_hqd_vmid = q->vmid;

 if (q->format == KFD_QUEUE_FORMAT_AQL)
  m->cp_hqd_pq_control |= NO_UPDATE_RPTR;

 update_cu_mask(mm, mqd, q);
 set_priority(m, q);

 q->is_active = QUEUE_IS_ACTIVE(*q);
}
