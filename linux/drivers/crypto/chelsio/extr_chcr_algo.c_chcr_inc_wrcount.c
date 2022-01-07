
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chcr_dev {scalar_t__ state; int inflight; } ;


 scalar_t__ CHCR_DETACH ;
 int atomic_inc (int *) ;

__attribute__((used)) static int chcr_inc_wrcount(struct chcr_dev *dev)
{
 if (dev->state == CHCR_DETACH)
  return 1;
 atomic_inc(&dev->inflight);
 return 0;
}
