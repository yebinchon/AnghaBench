
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_bitmap {unsigned long max; unsigned long last; int top; int reserved_top; int mask; int lock; int table; } ;


 unsigned long find_first_zero_bit (int ,int) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int hns_roce_bitmap_alloc(struct hns_roce_bitmap *bitmap, unsigned long *obj)
{
 int ret = 0;

 spin_lock(&bitmap->lock);
 *obj = find_next_zero_bit(bitmap->table, bitmap->max, bitmap->last);
 if (*obj >= bitmap->max) {
  bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
          & bitmap->mask;
  *obj = find_first_zero_bit(bitmap->table, bitmap->max);
 }

 if (*obj < bitmap->max) {
  set_bit(*obj, bitmap->table);
  bitmap->last = (*obj + 1);
  if (bitmap->last == bitmap->max)
   bitmap->last = 0;
  *obj |= bitmap->top;
 } else {
  ret = -1;
 }

 spin_unlock(&bitmap->lock);

 return ret;
}
