
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {TYPE_3__ lldi; } ;
struct c4iw_dev {scalar_t__ avail_ird; TYPE_2__ rdev; int qps; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int dev_warn (int *,char*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

__attribute__((used)) static int alloc_ird(struct c4iw_dev *dev, u32 ird)
{
 int ret = 0;

 xa_lock_irq(&dev->qps);
 if (ird <= dev->avail_ird)
  dev->avail_ird -= ird;
 else
  ret = -ENOMEM;
 xa_unlock_irq(&dev->qps);

 if (ret)
  dev_warn(&dev->rdev.lldi.pdev->dev,
    "device IRD resources exhausted\n");

 return ret;
}
