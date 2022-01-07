
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rxe_pool {scalar_t__ max_index; scalar_t__ min_index; scalar_t__ last; int table; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 scalar_t__ find_next_zero_bit (int ,scalar_t__,scalar_t__) ;
 int set_bit (scalar_t__,int ) ;

__attribute__((used)) static u32 alloc_index(struct rxe_pool *pool)
{
 u32 index;
 u32 range = pool->max_index - pool->min_index + 1;

 index = find_next_zero_bit(pool->table, range, pool->last);
 if (index >= range)
  index = find_first_zero_bit(pool->table, range);

 WARN_ON_ONCE(index >= range);
 set_bit(index, pool->table);
 pool->last = index;
 return index + pool->min_index;
}
