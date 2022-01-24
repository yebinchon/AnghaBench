#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t u16 ;
struct cpumask {int dummy; } ;
struct vmbus_channel {int numa_node; int target_cpu; scalar_t__ affinity_policy; void* target_vp; struct cpumask alloced_cpus_in_node; struct vmbus_channel* primary_channel; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;
struct TYPE_4__ {struct cpumask* hv_numa_map; } ;
struct TYPE_3__ {int perf_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HV_BALANCED ; 
 scalar_t__ HV_LOCALIZED ; 
 scalar_t__ VERSION_WIN7 ; 
 scalar_t__ VERSION_WS2008 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bind_channel_to_cpu_lock ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cpumask*) ; 
 scalar_t__ FUNC3 (struct cpumask*) ; 
 scalar_t__ FUNC4 (struct cpumask*,struct cpumask*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct cpumask* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct cpumask*) ; 
 scalar_t__ FUNC9 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct cpumask*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__ hv_context ; 
 void* FUNC12 (int) ; 
 int next_numa_node_id ; 
 int nr_cpu_ids ; 
 int nr_node_ids ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* vmbus_devs ; 
 scalar_t__ vmbus_proto_version ; 

__attribute__((used)) static void FUNC15(struct vmbus_channel *channel, u16 dev_type)
{
	u32 cur_cpu;
	bool perf_chn = vmbus_devs[dev_type].perf_device;
	struct vmbus_channel *primary = channel->primary_channel;
	int next_node;
	cpumask_var_t available_mask;
	struct cpumask *alloced_mask;

	if ((vmbus_proto_version == VERSION_WS2008) ||
	    (vmbus_proto_version == VERSION_WIN7) || (!perf_chn) ||
	    !FUNC0(&available_mask, GFP_KERNEL)) {
		/*
		 * Prior to win8, all channel interrupts are
		 * delivered on cpu 0.
		 * Also if the channel is not a performance critical
		 * channel, bind it to cpu 0.
		 * In case alloc_cpumask_var() fails, bind it to cpu 0.
		 */
		channel->numa_node = 0;
		channel->target_cpu = 0;
		channel->target_vp = FUNC12(0);
		return;
	}

	FUNC13(&bind_channel_to_cpu_lock);

	/*
	 * Based on the channel affinity policy, we will assign the NUMA
	 * nodes.
	 */

	if ((channel->affinity_policy == HV_BALANCED) || (!primary)) {
		while (true) {
			next_node = next_numa_node_id++;
			if (next_node == nr_node_ids) {
				next_node = next_numa_node_id = 0;
				continue;
			}
			if (FUNC3(FUNC6(next_node)))
				continue;
			break;
		}
		channel->numa_node = next_node;
		primary = channel;
	}
	alloced_mask = &hv_context.hv_numa_map[primary->numa_node];

	if (FUNC9(alloced_mask) ==
	    FUNC9(FUNC6(primary->numa_node))) {
		/*
		 * We have cycled through all the CPUs in the node;
		 * reset the alloced map.
		 */
		FUNC1(alloced_mask);
	}

	FUNC10(available_mask, alloced_mask,
		    FUNC6(primary->numa_node));

	cur_cpu = -1;

	if (primary->affinity_policy == HV_LOCALIZED) {
		/*
		 * Normally Hyper-V host doesn't create more subchannels
		 * than there are VCPUs on the node but it is possible when not
		 * all present VCPUs on the node are initialized by guest.
		 * Clear the alloced_cpus_in_node to start over.
		 */
		if (FUNC4(&primary->alloced_cpus_in_node,
				  FUNC6(primary->numa_node)))
			FUNC1(&primary->alloced_cpus_in_node);
	}

	while (true) {
		cur_cpu = FUNC5(cur_cpu, available_mask);
		if (cur_cpu >= nr_cpu_ids) {
			cur_cpu = -1;
			FUNC2(available_mask,
				     FUNC6(primary->numa_node));
			continue;
		}

		if (primary->affinity_policy == HV_LOCALIZED) {
			/*
			 * NOTE: in the case of sub-channel, we clear the
			 * sub-channel related bit(s) in
			 * primary->alloced_cpus_in_node in
			 * hv_process_channel_removal(), so when we
			 * reload drivers like hv_netvsc in SMP guest, here
			 * we're able to re-allocate
			 * bit from primary->alloced_cpus_in_node.
			 */
			if (!FUNC8(cur_cpu,
					      &primary->alloced_cpus_in_node)) {
				FUNC7(cur_cpu,
						&primary->alloced_cpus_in_node);
				FUNC7(cur_cpu, alloced_mask);
				break;
			}
		} else {
			FUNC7(cur_cpu, alloced_mask);
			break;
		}
	}

	channel->target_cpu = cur_cpu;
	channel->target_vp = FUNC12(cur_cpu);

	FUNC14(&bind_channel_to_cpu_lock);

	FUNC11(available_mask);
}