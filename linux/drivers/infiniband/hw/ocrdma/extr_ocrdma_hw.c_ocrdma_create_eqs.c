
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ocrdma_eq {int dummy; } ;
struct TYPE_7__ {int num_vectors; int start_vector; } ;
struct TYPE_8__ {scalar_t__ intr_mode; TYPE_1__ msix; } ;
struct ocrdma_dev {int id; int eq_cnt; TYPE_3__* eq_tbl; TYPE_2__ nic_info; } ;
struct TYPE_9__ {int irq_name; } ;


 scalar_t__ BE_INTERRUPT_MODE_INTX ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long IRQF_SHARED ;
 int OCRDMA_EQ_LEN ;
 TYPE_3__* kcalloc (int,int,int ) ;
 int min_t (int ,int,int ) ;
 int num_online_cpus () ;
 int ocrdma_create_eq (struct ocrdma_dev*,TYPE_3__*,int ) ;
 int ocrdma_destroy_eqs (struct ocrdma_dev*) ;
 int ocrdma_get_irq (struct ocrdma_dev*,TYPE_3__*) ;
 int ocrdma_irq_handler ;
 int request_irq (int,int ,unsigned long,int ,TYPE_3__*) ;
 int sprintf (int ,char*,int,int) ;
 int u32 ;

__attribute__((used)) static int ocrdma_create_eqs(struct ocrdma_dev *dev)
{
 int num_eq, i, status = 0;
 int irq;
 unsigned long flags = 0;

 num_eq = dev->nic_info.msix.num_vectors -
   dev->nic_info.msix.start_vector;
 if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX) {
  num_eq = 1;
  flags = IRQF_SHARED;
 } else {
  num_eq = min_t(u32, num_eq, num_online_cpus());
 }

 if (!num_eq)
  return -EINVAL;

 dev->eq_tbl = kcalloc(num_eq, sizeof(struct ocrdma_eq), GFP_KERNEL);
 if (!dev->eq_tbl)
  return -ENOMEM;

 for (i = 0; i < num_eq; i++) {
  status = ocrdma_create_eq(dev, &dev->eq_tbl[i],
     OCRDMA_EQ_LEN);
  if (status) {
   status = -EINVAL;
   break;
  }
  sprintf(dev->eq_tbl[i].irq_name, "ocrdma%d-%d",
   dev->id, i);
  irq = ocrdma_get_irq(dev, &dev->eq_tbl[i]);
  status = request_irq(irq, ocrdma_irq_handler, flags,
         dev->eq_tbl[i].irq_name,
         &dev->eq_tbl[i]);
  if (status)
   goto done;
  dev->eq_cnt += 1;
 }

 return 0;
done:
 ocrdma_destroy_eqs(dev);
 return status;
}
