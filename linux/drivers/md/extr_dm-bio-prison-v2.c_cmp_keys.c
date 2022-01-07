
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_cell_key_v2 {scalar_t__ virtual; scalar_t__ dev; scalar_t__ block_end; scalar_t__ block_begin; } ;



__attribute__((used)) static int cmp_keys(struct dm_cell_key_v2 *lhs,
      struct dm_cell_key_v2 *rhs)
{
 if (lhs->virtual < rhs->virtual)
  return -1;

 if (lhs->virtual > rhs->virtual)
  return 1;

 if (lhs->dev < rhs->dev)
  return -1;

 if (lhs->dev > rhs->dev)
  return 1;

 if (lhs->block_end <= rhs->block_begin)
  return -1;

 if (lhs->block_begin >= rhs->block_end)
  return 1;

 return 0;
}
