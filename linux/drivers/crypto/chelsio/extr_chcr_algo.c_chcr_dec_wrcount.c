
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chcr_dev {int inflight; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void chcr_dec_wrcount(struct chcr_dev *dev)
{
 atomic_dec(&dev->inflight);
}
