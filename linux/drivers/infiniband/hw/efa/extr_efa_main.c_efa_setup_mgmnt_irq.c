
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int name; int vector; int affinity_hint_mask; int cpu; struct efa_dev* data; int handler; } ;
struct efa_dev {TYPE_3__ admin_irq; TYPE_1__* pdev; int admin_msix_vector_idx; } ;
struct TYPE_4__ {int dev; } ;


 int EFA_IRQNAME_SIZE ;
 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_set_cpu (int ,int *) ;
 int dev_info (int *,char*,TYPE_3__*,int ,int ) ;
 int efa_intr_msix_mgmnt ;
 int pci_irq_vector (TYPE_1__*,int ) ;
 char* pci_name (TYPE_1__*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static void efa_setup_mgmnt_irq(struct efa_dev *dev)
{
 u32 cpu;

 snprintf(dev->admin_irq.name, EFA_IRQNAME_SIZE,
   "efa-mgmnt@pci:%s", pci_name(dev->pdev));
 dev->admin_irq.handler = efa_intr_msix_mgmnt;
 dev->admin_irq.data = dev;
 dev->admin_irq.vector =
  pci_irq_vector(dev->pdev, dev->admin_msix_vector_idx);
 cpu = cpumask_first(cpu_online_mask);
 dev->admin_irq.cpu = cpu;
 cpumask_set_cpu(cpu,
   &dev->admin_irq.affinity_hint_mask);
 dev_info(&dev->pdev->dev, "Setup irq:0x%p vector:%d name:%s\n",
   &dev->admin_irq,
   dev->admin_irq.vector,
   dev->admin_irq.name);
}
