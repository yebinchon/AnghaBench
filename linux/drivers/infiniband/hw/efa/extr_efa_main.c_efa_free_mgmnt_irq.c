
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_irq {int data; int vector; } ;
struct efa_dev {struct efa_irq admin_irq; } ;


 int free_irq (int ,int ) ;
 int irq_set_affinity_hint (int ,int *) ;

__attribute__((used)) static void efa_free_mgmnt_irq(struct efa_dev *dev)
{
 struct efa_irq *irq;

 irq = &dev->admin_irq;
 irq_set_affinity_hint(irq->vector, ((void*)0));
 free_irq(irq->vector, irq->data);
}
