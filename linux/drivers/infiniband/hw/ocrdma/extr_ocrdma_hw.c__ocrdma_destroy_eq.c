
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ created; } ;
struct ocrdma_eq {TYPE_1__ q; } ;
struct ocrdma_dev {int dummy; } ;


 int QTYPE_EQ ;
 int ocrdma_free_q (struct ocrdma_dev*,TYPE_1__*) ;
 int ocrdma_mbx_delete_q (struct ocrdma_dev*,TYPE_1__*,int ) ;

__attribute__((used)) static void _ocrdma_destroy_eq(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
 if (eq->q.created) {
  ocrdma_mbx_delete_q(dev, &eq->q, QTYPE_EQ);
  ocrdma_free_q(dev, &eq->q);
 }
}
