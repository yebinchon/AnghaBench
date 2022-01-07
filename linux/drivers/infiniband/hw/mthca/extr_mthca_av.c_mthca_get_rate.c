
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int stat_rate_support; } ;
struct mthca_dev {scalar_t__* rate; TYPE_1__ limits; } ;


 int ib_rate_to_memfree (scalar_t__,scalar_t__) ;
 scalar_t__ ib_rate_to_mult (int) ;
 int ib_rate_to_tavor (int) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

u8 mthca_get_rate(struct mthca_dev *dev, int static_rate, u8 port)
{
 u8 rate;

 if (!static_rate || ib_rate_to_mult(static_rate) >= dev->rate[port - 1])
  return 0;

 if (mthca_is_memfree(dev))
  rate = ib_rate_to_memfree(ib_rate_to_mult(static_rate),
       dev->rate[port - 1]);
 else
  rate = ib_rate_to_tavor(static_rate);

 if (!(dev->limits.stat_rate_support & (1 << rate)))
  rate = 1;

 return rate;
}
