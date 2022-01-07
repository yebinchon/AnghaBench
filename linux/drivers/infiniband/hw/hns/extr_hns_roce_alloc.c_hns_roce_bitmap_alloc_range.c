
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_bitmap {unsigned long max; unsigned long last; int top; int reserved_top; int mask; int lock; int table; } ;


 unsigned long bitmap_find_next_zero_area (int ,unsigned long,unsigned long,int,int) ;
 int hns_roce_bitmap_alloc (struct hns_roce_bitmap*,unsigned long*) ;
 scalar_t__ likely (int) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hns_roce_bitmap_alloc_range(struct hns_roce_bitmap *bitmap, int cnt,
    int align, unsigned long *obj)
{
 int ret = 0;
 int i;

 if (likely(cnt == 1 && align == 1))
  return hns_roce_bitmap_alloc(bitmap, obj);

 spin_lock(&bitmap->lock);

 *obj = bitmap_find_next_zero_area(bitmap->table, bitmap->max,
       bitmap->last, cnt, align - 1);
 if (*obj >= bitmap->max) {
  bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
          & bitmap->mask;
  *obj = bitmap_find_next_zero_area(bitmap->table, bitmap->max, 0,
        cnt, align - 1);
 }

 if (*obj < bitmap->max) {
  for (i = 0; i < cnt; i++)
   set_bit(*obj + i, bitmap->table);

  if (*obj == bitmap->last) {
   bitmap->last = (*obj + cnt);
   if (bitmap->last >= bitmap->max)
    bitmap->last = 0;
  }
  *obj |= bitmap->top;
 } else {
  ret = -1;
 }

 spin_unlock(&bitmap->lock);

 return ret;
}
