
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_buddy {int max_order; int* bits; int* num_free; int lock; } ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int array_size (int,int) ;
 void* kcalloc (int,int,int) ;
 int kfree (int*) ;
 int kvfree (int) ;
 int set_bit (int ,int) ;
 int spin_lock_init (int *) ;
 int vzalloc (int ) ;

__attribute__((used)) static int hns_roce_buddy_init(struct hns_roce_buddy *buddy, int max_order)
{
 int i, s;

 buddy->max_order = max_order;
 spin_lock_init(&buddy->lock);
 buddy->bits = kcalloc(buddy->max_order + 1,
         sizeof(*buddy->bits),
         GFP_KERNEL);
 buddy->num_free = kcalloc(buddy->max_order + 1,
      sizeof(*buddy->num_free),
      GFP_KERNEL);
 if (!buddy->bits || !buddy->num_free)
  goto err_out;

 for (i = 0; i <= buddy->max_order; ++i) {
  s = BITS_TO_LONGS(1 << (buddy->max_order - i));
  buddy->bits[i] = kcalloc(s, sizeof(long), GFP_KERNEL |
      __GFP_NOWARN);
  if (!buddy->bits[i]) {
   buddy->bits[i] = vzalloc(array_size(s, sizeof(long)));
   if (!buddy->bits[i])
    goto err_out_free;
  }
 }

 set_bit(0, buddy->bits[buddy->max_order]);
 buddy->num_free[buddy->max_order] = 1;

 return 0;

err_out_free:
 for (i = 0; i <= buddy->max_order; ++i)
  kvfree(buddy->bits[i]);

err_out:
 kfree(buddy->bits);
 kfree(buddy->num_free);
 return -ENOMEM;
}
