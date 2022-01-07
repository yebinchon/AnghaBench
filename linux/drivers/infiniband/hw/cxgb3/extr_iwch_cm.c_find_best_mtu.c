
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3c_data {int nmtus; unsigned short* mtus; } ;



__attribute__((used)) static unsigned int find_best_mtu(const struct t3c_data *d, unsigned short mtu)
{
 int i = 0;

 while (i < d->nmtus - 1 && d->mtus[i + 1] <= mtu)
  ++i;
 return i;
}
