
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_dev {int avail_ird; int qps; } ;


 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

__attribute__((used)) static void free_ird(struct c4iw_dev *dev, int ird)
{
 xa_lock_irq(&dev->qps);
 dev->avail_ird += ird;
 xa_unlock_irq(&dev->qps);
}
