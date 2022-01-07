
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int device; scalar_t__ vendor; } ;
struct pci_dev {int bus; } ;
struct TYPE_3__ {int mask; scalar_t__ gen; int used; } ;
struct TYPE_4__ {int num_possible_nodes; int num_online_cpus; int num_online_nodes; TYPE_1__ proc; int num_core_siblings; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_online_mask ;
 int cpumask_clear (int *) ;
 int cpumask_copy (int *,int ) ;
 int cpumask_first (int *) ;
 int cpumask_weight (int ) ;
 struct pci_device_id* hfi1_pci_tbl ;
 int* hfi1_per_node_cntr ;
 int init_real_cpu_mask () ;
 int* kcalloc (int,int,int ) ;
 TYPE_2__ node_affinity ;
 int num_online_cpus () ;
 int num_online_nodes () ;
 int num_possible_nodes () ;
 struct pci_dev* pci_get_device (scalar_t__,int ,struct pci_dev*) ;
 int pcibus_to_node (int ) ;
 int pr_err (char*) ;
 int topology_sibling_cpumask (int ) ;

int node_affinity_init(void)
{
 int node;
 struct pci_dev *dev = ((void*)0);
 const struct pci_device_id *ids = hfi1_pci_tbl;

 cpumask_clear(&node_affinity.proc.used);
 cpumask_copy(&node_affinity.proc.mask, cpu_online_mask);

 node_affinity.proc.gen = 0;
 node_affinity.num_core_siblings =
    cpumask_weight(topology_sibling_cpumask(
     cpumask_first(&node_affinity.proc.mask)
     ));
 node_affinity.num_possible_nodes = num_possible_nodes();
 node_affinity.num_online_nodes = num_online_nodes();
 node_affinity.num_online_cpus = num_online_cpus();






 init_real_cpu_mask();

 hfi1_per_node_cntr = kcalloc(node_affinity.num_possible_nodes,
         sizeof(*hfi1_per_node_cntr), GFP_KERNEL);
 if (!hfi1_per_node_cntr)
  return -ENOMEM;

 while (ids->vendor) {
  dev = ((void*)0);
  while ((dev = pci_get_device(ids->vendor, ids->device, dev))) {
   node = pcibus_to_node(dev->bus);
   if (node < 0)
    goto out;

   hfi1_per_node_cntr[node]++;
  }
  ids++;
 }

 return 0;

out:




 pr_err("HFI: Invalid PCI NUMA node. Performance may be affected\n");
 pr_err("HFI: System BIOS may need to be upgraded\n");
 for (node = 0; node < node_affinity.num_possible_nodes; node++)
  hfi1_per_node_cntr[node] = 1;

 return 0;
}
