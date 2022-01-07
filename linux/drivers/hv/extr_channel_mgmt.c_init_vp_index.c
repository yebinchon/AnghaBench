
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct cpumask {int dummy; } ;
struct vmbus_channel {int numa_node; int target_cpu; scalar_t__ affinity_policy; void* target_vp; struct cpumask alloced_cpus_in_node; struct vmbus_channel* primary_channel; } ;
typedef int cpumask_var_t ;
struct TYPE_4__ {struct cpumask* hv_numa_map; } ;
struct TYPE_3__ {int perf_device; } ;


 int GFP_KERNEL ;
 scalar_t__ HV_BALANCED ;
 scalar_t__ HV_LOCALIZED ;
 scalar_t__ VERSION_WIN7 ;
 scalar_t__ VERSION_WS2008 ;
 int alloc_cpumask_var (int *,int ) ;
 int bind_channel_to_cpu_lock ;
 int cpumask_clear (struct cpumask*) ;
 int cpumask_copy (int ,struct cpumask*) ;
 scalar_t__ cpumask_empty (struct cpumask*) ;
 scalar_t__ cpumask_equal (struct cpumask*,struct cpumask*) ;
 int cpumask_next (int,int ) ;
 struct cpumask* cpumask_of_node (int) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 int cpumask_test_cpu (int,struct cpumask*) ;
 scalar_t__ cpumask_weight (struct cpumask*) ;
 int cpumask_xor (int ,struct cpumask*,struct cpumask*) ;
 int free_cpumask_var (int ) ;
 TYPE_2__ hv_context ;
 void* hv_cpu_number_to_vp_number (int) ;
 int next_numa_node_id ;
 int nr_cpu_ids ;
 int nr_node_ids ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* vmbus_devs ;
 scalar_t__ vmbus_proto_version ;

__attribute__((used)) static void init_vp_index(struct vmbus_channel *channel, u16 dev_type)
{
 u32 cur_cpu;
 bool perf_chn = vmbus_devs[dev_type].perf_device;
 struct vmbus_channel *primary = channel->primary_channel;
 int next_node;
 cpumask_var_t available_mask;
 struct cpumask *alloced_mask;

 if ((vmbus_proto_version == VERSION_WS2008) ||
     (vmbus_proto_version == VERSION_WIN7) || (!perf_chn) ||
     !alloc_cpumask_var(&available_mask, GFP_KERNEL)) {







  channel->numa_node = 0;
  channel->target_cpu = 0;
  channel->target_vp = hv_cpu_number_to_vp_number(0);
  return;
 }

 spin_lock(&bind_channel_to_cpu_lock);






 if ((channel->affinity_policy == HV_BALANCED) || (!primary)) {
  while (1) {
   next_node = next_numa_node_id++;
   if (next_node == nr_node_ids) {
    next_node = next_numa_node_id = 0;
    continue;
   }
   if (cpumask_empty(cpumask_of_node(next_node)))
    continue;
   break;
  }
  channel->numa_node = next_node;
  primary = channel;
 }
 alloced_mask = &hv_context.hv_numa_map[primary->numa_node];

 if (cpumask_weight(alloced_mask) ==
     cpumask_weight(cpumask_of_node(primary->numa_node))) {




  cpumask_clear(alloced_mask);
 }

 cpumask_xor(available_mask, alloced_mask,
      cpumask_of_node(primary->numa_node));

 cur_cpu = -1;

 if (primary->affinity_policy == HV_LOCALIZED) {






  if (cpumask_equal(&primary->alloced_cpus_in_node,
      cpumask_of_node(primary->numa_node)))
   cpumask_clear(&primary->alloced_cpus_in_node);
 }

 while (1) {
  cur_cpu = cpumask_next(cur_cpu, available_mask);
  if (cur_cpu >= nr_cpu_ids) {
   cur_cpu = -1;
   cpumask_copy(available_mask,
         cpumask_of_node(primary->numa_node));
   continue;
  }

  if (primary->affinity_policy == HV_LOCALIZED) {
   if (!cpumask_test_cpu(cur_cpu,
           &primary->alloced_cpus_in_node)) {
    cpumask_set_cpu(cur_cpu,
      &primary->alloced_cpus_in_node);
    cpumask_set_cpu(cur_cpu, alloced_mask);
    break;
   }
  } else {
   cpumask_set_cpu(cur_cpu, alloced_mask);
   break;
  }
 }

 channel->target_cpu = cur_cpu;
 channel->target_vp = hv_cpu_number_to_vp_number(cur_cpu);

 spin_unlock(&bind_channel_to_cpu_lock);

 free_cpumask_var(available_mask);
}
