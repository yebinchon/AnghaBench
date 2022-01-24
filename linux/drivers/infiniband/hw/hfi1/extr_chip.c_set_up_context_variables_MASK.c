#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
typedef  unsigned long u16 ;
struct TYPE_4__ {unsigned int group_size; unsigned int ngroups; unsigned int nctxt_extra; } ;
struct hfi1_devdata {int num_rcv_contexts; unsigned long n_krcv_queues; unsigned long first_dyn_alloc_ctxt; unsigned long num_vnic_contexts; unsigned long num_user_contexts; unsigned long freectxts; int num_send_contexts; TYPE_2__* sc_sizes; TYPE_1__ rcv_entries; } ;
struct TYPE_6__ {int /*<<< orphan*/  real_cpu_mask; } ;
struct TYPE_5__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int DEFAULT_KRCVQS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HFI1_NUM_VNIC_CTXT ; 
 int MAX_EAGER_ENTRIES ; 
 int NUM_MAP_ENTRIES ; 
 unsigned int RCV_INCREMENT ; 
 size_t SC_ACK ; 
 size_t SC_KERNEL ; 
 size_t SC_USER ; 
 size_t SC_VL15 ; 
 int /*<<< orphan*/  TID_RDMA ; 
 unsigned int FUNC1 (struct hfi1_devdata*) ; 
 unsigned long FUNC2 (struct hfi1_devdata*) ; 
 unsigned long FUNC3 (struct hfi1_devdata*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,char*,unsigned long,...) ; 
 int FUNC7 (struct hfi1_devdata*) ; 
 long n_krcvqs ; 
 TYPE_3__ node_affinity ; 
 scalar_t__ num_user_contexts ; 
 int num_vls ; 
 unsigned long FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hfi1_devdata *dd)
{
	unsigned long num_kernel_contexts;
	u16 num_vnic_contexts = HFI1_NUM_VNIC_CTXT;
	int total_contexts;
	int ret;
	unsigned ngroups;
	int rmt_count;
	int user_rmt_reduced;
	u32 n_usr_ctxts;
	u32 send_contexts = FUNC3(dd);
	u32 rcv_contexts = FUNC2(dd);

	/*
	 * Kernel receive contexts:
	 * - Context 0 - control context (VL15/multicast/error)
	 * - Context 1 - first kernel context
	 * - Context 2 - second kernel context
	 * ...
	 */
	if (n_krcvqs)
		/*
		 * n_krcvqs is the sum of module parameter kernel receive
		 * contexts, krcvqs[].  It does not include the control
		 * context, so add that.
		 */
		num_kernel_contexts = n_krcvqs + 1;
	else
		num_kernel_contexts = DEFAULT_KRCVQS + 1;
	/*
	 * Every kernel receive context needs an ACK send context.
	 * one send context is allocated for each VL{0-7} and VL15
	 */
	if (num_kernel_contexts > (send_contexts - num_vls - 1)) {
		FUNC5(dd,
			   "Reducing # kernel rcv contexts to: %d, from %lu\n",
			   send_contexts - num_vls - 1,
			   num_kernel_contexts);
		num_kernel_contexts = send_contexts - num_vls - 1;
	}

	/* Accommodate VNIC contexts if possible */
	if ((num_kernel_contexts + num_vnic_contexts) > rcv_contexts) {
		FUNC5(dd, "No receive contexts available for VNIC\n");
		num_vnic_contexts = 0;
	}
	total_contexts = num_kernel_contexts + num_vnic_contexts;

	/*
	 * User contexts:
	 *	- default to 1 user context per real (non-HT) CPU core if
	 *	  num_user_contexts is negative
	 */
	if (num_user_contexts < 0)
		n_usr_ctxts = FUNC4(&node_affinity.real_cpu_mask);
	else
		n_usr_ctxts = num_user_contexts;
	/*
	 * Adjust the counts given a global max.
	 */
	if (total_contexts + n_usr_ctxts > rcv_contexts) {
		FUNC5(dd,
			   "Reducing # user receive contexts to: %d, from %u\n",
			   rcv_contexts - total_contexts,
			   n_usr_ctxts);
		/* recalculate */
		n_usr_ctxts = rcv_contexts - total_contexts;
	}

	/*
	 * The RMT entries are currently allocated as shown below:
	 * 1. QOS (0 to 128 entries);
	 * 2. FECN (num_kernel_context - 1 + num_user_contexts +
	 *    num_vnic_contexts);
	 * 3. VNIC (num_vnic_contexts).
	 * It should be noted that FECN oversubscribe num_vnic_contexts
	 * entries of RMT because both VNIC and PSM could allocate any receive
	 * context between dd->first_dyn_alloc_text and dd->num_rcv_contexts,
	 * and PSM FECN must reserve an RMT entry for each possible PSM receive
	 * context.
	 */
	rmt_count = FUNC8(dd, NULL, NULL) + (num_vnic_contexts * 2);
	if (FUNC0(TID_RDMA))
		rmt_count += num_kernel_contexts - 1;
	if (rmt_count + n_usr_ctxts > NUM_MAP_ENTRIES) {
		user_rmt_reduced = NUM_MAP_ENTRIES - rmt_count;
		FUNC5(dd,
			   "RMT size is reducing the number of user receive contexts from %u to %d\n",
			   n_usr_ctxts,
			   user_rmt_reduced);
		/* recalculate */
		n_usr_ctxts = user_rmt_reduced;
	}

	total_contexts += n_usr_ctxts;

	/* the first N are kernel contexts, the rest are user/vnic contexts */
	dd->num_rcv_contexts = total_contexts;
	dd->n_krcv_queues = num_kernel_contexts;
	dd->first_dyn_alloc_ctxt = num_kernel_contexts;
	dd->num_vnic_contexts = num_vnic_contexts;
	dd->num_user_contexts = n_usr_ctxts;
	dd->freectxts = n_usr_ctxts;
	FUNC6(dd,
		    "rcv contexts: chip %d, used %d (kernel %d, vnic %u, user %u)\n",
		    rcv_contexts,
		    (int)dd->num_rcv_contexts,
		    (int)dd->n_krcv_queues,
		    dd->num_vnic_contexts,
		    dd->num_user_contexts);

	/*
	 * Receive array allocation:
	 *   All RcvArray entries are divided into groups of 8. This
	 *   is required by the hardware and will speed up writes to
	 *   consecutive entries by using write-combining of the entire
	 *   cacheline.
	 *
	 *   The number of groups are evenly divided among all contexts.
	 *   any left over groups will be given to the first N user
	 *   contexts.
	 */
	dd->rcv_entries.group_size = RCV_INCREMENT;
	ngroups = FUNC1(dd) / dd->rcv_entries.group_size;
	dd->rcv_entries.ngroups = ngroups / dd->num_rcv_contexts;
	dd->rcv_entries.nctxt_extra = ngroups -
		(dd->num_rcv_contexts * dd->rcv_entries.ngroups);
	FUNC6(dd, "RcvArray groups %u, ctxts extra %u\n",
		    dd->rcv_entries.ngroups,
		    dd->rcv_entries.nctxt_extra);
	if (dd->rcv_entries.ngroups * dd->rcv_entries.group_size >
	    MAX_EAGER_ENTRIES * 2) {
		dd->rcv_entries.ngroups = (MAX_EAGER_ENTRIES * 2) /
			dd->rcv_entries.group_size;
		FUNC6(dd,
			    "RcvArray group count too high, change to %u\n",
			    dd->rcv_entries.ngroups);
		dd->rcv_entries.nctxt_extra = 0;
	}
	/*
	 * PIO send contexts
	 */
	ret = FUNC7(dd);
	if (ret >= 0) {	/* success */
		dd->num_send_contexts = ret;
		FUNC6(
			dd,
			"send contexts: chip %d, used %d (kernel %d, ack %d, user %d, vl15 %d)\n",
			send_contexts,
			dd->num_send_contexts,
			dd->sc_sizes[SC_KERNEL].count,
			dd->sc_sizes[SC_ACK].count,
			dd->sc_sizes[SC_USER].count,
			dd->sc_sizes[SC_VL15].count);
		ret = 0;	/* success */
	}

	return ret;
}