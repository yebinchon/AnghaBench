
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ocrdma_dev {int dev_lock; TYPE_1__* eq_tbl; } ;
struct TYPE_2__ {int cq_cnt; } ;


 int BUG () ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocrdma_get_eq_table_index (struct ocrdma_dev*,int ) ;

__attribute__((used)) static void ocrdma_unbind_eq(struct ocrdma_dev *dev, u16 eq_id)
{
 int i;

 mutex_lock(&dev->dev_lock);
 i = ocrdma_get_eq_table_index(dev, eq_id);
 if (i == -EINVAL)
  BUG();
 dev->eq_tbl[i].cq_cnt -= 1;
 mutex_unlock(&dev->dev_lock);
}
