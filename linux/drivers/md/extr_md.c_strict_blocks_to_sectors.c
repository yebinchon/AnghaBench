
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long sector_t ;
typedef int blocks ;


 int EINVAL ;
 scalar_t__ kstrtoull (char const*,int,unsigned long long*) ;

__attribute__((used)) static int strict_blocks_to_sectors(const char *buf, sector_t *sectors)
{
 unsigned long long blocks;
 sector_t new;

 if (kstrtoull(buf, 10, &blocks) < 0)
  return -EINVAL;

 if (blocks & 1ULL << (8 * sizeof(blocks) - 1))
  return -EINVAL;

 new = blocks * 2;
 if (new != blocks * 2)
  return -EINVAL;

 *sectors = new;
 return 0;
}
