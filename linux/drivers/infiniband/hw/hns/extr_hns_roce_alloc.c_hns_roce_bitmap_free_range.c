
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_bitmap {int max; int reserved_top; int top; int mask; int lock; int last; int table; } ;


 int clear_bit (unsigned long,int ) ;
 int min (int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void hns_roce_bitmap_free_range(struct hns_roce_bitmap *bitmap,
    unsigned long obj, int cnt,
    int rr)
{
 int i;

 obj &= bitmap->max + bitmap->reserved_top - 1;

 spin_lock(&bitmap->lock);
 for (i = 0; i < cnt; i++)
  clear_bit(obj + i, bitmap->table);

 if (!rr)
  bitmap->last = min(bitmap->last, obj);
 bitmap->top = (bitmap->top + bitmap->max + bitmap->reserved_top)
         & bitmap->mask;
 spin_unlock(&bitmap->lock);
}
