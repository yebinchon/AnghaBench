
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u32 ;
typedef unsigned long u16 ;
struct TYPE_4__ {unsigned int group_size; unsigned int ngroups; unsigned int nctxt_extra; } ;
struct hfi1_devdata {int num_rcv_contexts; unsigned long n_krcv_queues; unsigned long first_dyn_alloc_ctxt; unsigned long num_vnic_contexts; unsigned long num_user_contexts; unsigned long freectxts; int num_send_contexts; TYPE_2__* sc_sizes; TYPE_1__ rcv_entries; } ;
struct TYPE_6__ {int real_cpu_mask; } ;
struct TYPE_5__ {int count; } ;


 int DEFAULT_KRCVQS ;
 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 unsigned long HFI1_NUM_VNIC_CTXT ;
 int MAX_EAGER_ENTRIES ;
 int NUM_MAP_ENTRIES ;
 unsigned int RCV_INCREMENT ;
 size_t SC_ACK ;
 size_t SC_KERNEL ;
 size_t SC_USER ;
 size_t SC_VL15 ;
 int TID_RDMA ;
 unsigned int chip_rcv_array_count (struct hfi1_devdata*) ;
 unsigned long chip_rcv_contexts (struct hfi1_devdata*) ;
 unsigned long chip_send_contexts (struct hfi1_devdata*) ;
 unsigned long cpumask_weight (int *) ;
 int dd_dev_err (struct hfi1_devdata*,char*,...) ;
 int dd_dev_info (struct hfi1_devdata*,char*,unsigned long,...) ;
 int init_sc_pools_and_sizes (struct hfi1_devdata*) ;
 long n_krcvqs ;
 TYPE_3__ node_affinity ;
 scalar_t__ num_user_contexts ;
 int num_vls ;
 unsigned long qos_rmt_entries (struct hfi1_devdata*,int *,int *) ;

__attribute__((used)) static int set_up_context_variables(struct hfi1_devdata *dd)
{
 unsigned long num_kernel_contexts;
 u16 num_vnic_contexts = HFI1_NUM_VNIC_CTXT;
 int total_contexts;
 int ret;
 unsigned ngroups;
 int rmt_count;
 int user_rmt_reduced;
 u32 n_usr_ctxts;
 u32 send_contexts = chip_send_contexts(dd);
 u32 rcv_contexts = chip_rcv_contexts(dd);
 if (n_krcvqs)





  num_kernel_contexts = n_krcvqs + 1;
 else
  num_kernel_contexts = DEFAULT_KRCVQS + 1;




 if (num_kernel_contexts > (send_contexts - num_vls - 1)) {
  dd_dev_err(dd,
      "Reducing # kernel rcv contexts to: %d, from %lu\n",
      send_contexts - num_vls - 1,
      num_kernel_contexts);
  num_kernel_contexts = send_contexts - num_vls - 1;
 }


 if ((num_kernel_contexts + num_vnic_contexts) > rcv_contexts) {
  dd_dev_err(dd, "No receive contexts available for VNIC\n");
  num_vnic_contexts = 0;
 }
 total_contexts = num_kernel_contexts + num_vnic_contexts;






 if (num_user_contexts < 0)
  n_usr_ctxts = cpumask_weight(&node_affinity.real_cpu_mask);
 else
  n_usr_ctxts = num_user_contexts;



 if (total_contexts + n_usr_ctxts > rcv_contexts) {
  dd_dev_err(dd,
      "Reducing # user receive contexts to: %d, from %u\n",
      rcv_contexts - total_contexts,
      n_usr_ctxts);

  n_usr_ctxts = rcv_contexts - total_contexts;
 }
 rmt_count = qos_rmt_entries(dd, ((void*)0), ((void*)0)) + (num_vnic_contexts * 2);
 if (HFI1_CAP_IS_KSET(TID_RDMA))
  rmt_count += num_kernel_contexts - 1;
 if (rmt_count + n_usr_ctxts > NUM_MAP_ENTRIES) {
  user_rmt_reduced = NUM_MAP_ENTRIES - rmt_count;
  dd_dev_err(dd,
      "RMT size is reducing the number of user receive contexts from %u to %d\n",
      n_usr_ctxts,
      user_rmt_reduced);

  n_usr_ctxts = user_rmt_reduced;
 }

 total_contexts += n_usr_ctxts;


 dd->num_rcv_contexts = total_contexts;
 dd->n_krcv_queues = num_kernel_contexts;
 dd->first_dyn_alloc_ctxt = num_kernel_contexts;
 dd->num_vnic_contexts = num_vnic_contexts;
 dd->num_user_contexts = n_usr_ctxts;
 dd->freectxts = n_usr_ctxts;
 dd_dev_info(dd,
      "rcv contexts: chip %d, used %d (kernel %d, vnic %u, user %u)\n",
      rcv_contexts,
      (int)dd->num_rcv_contexts,
      (int)dd->n_krcv_queues,
      dd->num_vnic_contexts,
      dd->num_user_contexts);
 dd->rcv_entries.group_size = RCV_INCREMENT;
 ngroups = chip_rcv_array_count(dd) / dd->rcv_entries.group_size;
 dd->rcv_entries.ngroups = ngroups / dd->num_rcv_contexts;
 dd->rcv_entries.nctxt_extra = ngroups -
  (dd->num_rcv_contexts * dd->rcv_entries.ngroups);
 dd_dev_info(dd, "RcvArray groups %u, ctxts extra %u\n",
      dd->rcv_entries.ngroups,
      dd->rcv_entries.nctxt_extra);
 if (dd->rcv_entries.ngroups * dd->rcv_entries.group_size >
     MAX_EAGER_ENTRIES * 2) {
  dd->rcv_entries.ngroups = (MAX_EAGER_ENTRIES * 2) /
   dd->rcv_entries.group_size;
  dd_dev_info(dd,
       "RcvArray group count too high, change to %u\n",
       dd->rcv_entries.ngroups);
  dd->rcv_entries.nctxt_extra = 0;
 }



 ret = init_sc_pools_and_sizes(dd);
 if (ret >= 0) {
  dd->num_send_contexts = ret;
  dd_dev_info(
   dd,
   "send contexts: chip %d, used %d (kernel %d, ack %d, user %d, vl15 %d)\n",
   send_contexts,
   dd->num_send_contexts,
   dd->sc_sizes[SC_KERNEL].count,
   dd->sc_sizes[SC_ACK].count,
   dd->sc_sizes[SC_USER].count,
   dd->sc_sizes[SC_VL15].count);
  ret = 0;
 }

 return ret;
}
