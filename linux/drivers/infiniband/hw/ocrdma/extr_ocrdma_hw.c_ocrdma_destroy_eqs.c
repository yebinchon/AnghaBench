
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int eq_cnt; int * eq_tbl; } ;


 int ocrdma_destroy_eq (struct ocrdma_dev*,int *) ;

__attribute__((used)) static void ocrdma_destroy_eqs(struct ocrdma_dev *dev)
{
 int i;

 for (i = 0; i < dev->eq_cnt; i++)
  ocrdma_destroy_eq(dev, &dev->eq_tbl[i]);
}
