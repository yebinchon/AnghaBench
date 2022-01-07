
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct fsi_slave {scalar_t__ size; } ;


 int EINVAL ;

extern int fsi_slave_claim_range(struct fsi_slave *slave,
  uint32_t addr, uint32_t size)
{
 if (addr + size < addr)
  return -EINVAL;

 if (addr + size > slave->size)
  return -EINVAL;


 return 0;
}
