
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct ocrdma_eq {TYPE_1__ q; } ;
struct ocrdma_dev {int dummy; } ;


 int _ocrdma_destroy_eq (struct ocrdma_dev*,struct ocrdma_eq*) ;
 int free_irq (int,struct ocrdma_eq*) ;
 int ocrdma_get_irq (struct ocrdma_dev*,struct ocrdma_eq*) ;
 int ocrdma_ring_eq_db (struct ocrdma_dev*,int ,int,int,int ) ;

__attribute__((used)) static void ocrdma_destroy_eq(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
 int irq;




 ocrdma_ring_eq_db(dev, eq->q.id, 0, 0, 0);

 irq = ocrdma_get_irq(dev, eq);
 free_irq(irq, eq);
 _ocrdma_destroy_eq(dev, eq);
}
