
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hns_roce_bitmap {int table; scalar_t__ max; int lock; scalar_t__ reserved_top; scalar_t__ mask; scalar_t__ top; scalar_t__ last; } ;


 int BITS_TO_LONGS (scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (int ,int,int ) ;
 scalar_t__ roundup_pow_of_two (scalar_t__) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock_init (int *) ;

int hns_roce_bitmap_init(struct hns_roce_bitmap *bitmap, u32 num, u32 mask,
    u32 reserved_bot, u32 reserved_top)
{
 u32 i;

 if (num != roundup_pow_of_two(num))
  return -EINVAL;

 bitmap->last = 0;
 bitmap->top = 0;
 bitmap->max = num - reserved_top;
 bitmap->mask = mask;
 bitmap->reserved_top = reserved_top;
 spin_lock_init(&bitmap->lock);
 bitmap->table = kcalloc(BITS_TO_LONGS(bitmap->max), sizeof(long),
    GFP_KERNEL);
 if (!bitmap->table)
  return -ENOMEM;

 for (i = 0; i < reserved_bot; ++i)
  set_bit(i, bitmap->table);

 return 0;
}
