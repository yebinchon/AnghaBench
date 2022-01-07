
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rxe_pool {scalar_t__ max_elem; size_t table_size; int table; scalar_t__ min_index; scalar_t__ max_index; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_zero (int ,scalar_t__) ;
 int kmalloc (size_t,int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int rxe_pool_init_index(struct rxe_pool *pool, u32 max, u32 min)
{
 int err = 0;
 size_t size;

 if ((max - min + 1) < pool->max_elem) {
  pr_warn("not enough indices for max_elem\n");
  err = -EINVAL;
  goto out;
 }

 pool->max_index = max;
 pool->min_index = min;

 size = BITS_TO_LONGS(max - min + 1) * sizeof(long);
 pool->table = kmalloc(size, GFP_KERNEL);
 if (!pool->table) {
  err = -ENOMEM;
  goto out;
 }

 pool->table_size = size;
 bitmap_zero(pool->table, max - min + 1);

out:
 return err;
}
