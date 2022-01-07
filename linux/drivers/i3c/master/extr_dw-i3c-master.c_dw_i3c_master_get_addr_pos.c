
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dw_i3c_master {int maxdevs; scalar_t__* addrs; } ;


 int EINVAL ;

__attribute__((used)) static int dw_i3c_master_get_addr_pos(struct dw_i3c_master *master, u8 addr)
{
 int pos;

 for (pos = 0; pos < master->maxdevs; pos++) {
  if (addr == master->addrs[pos])
   return pos;
 }

 return -EINVAL;
}
