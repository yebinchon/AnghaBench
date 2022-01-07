
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct hns_roce_buddy {int max_order; int lock; scalar_t__* num_free; int * bits; } ;


 int clear_bit (unsigned long,int ) ;
 unsigned long find_first_bit (int ,unsigned long) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hns_roce_buddy_alloc(struct hns_roce_buddy *buddy, int order,
    unsigned long *seg)
{
 int o;
 u32 m;

 spin_lock(&buddy->lock);

 for (o = order; o <= buddy->max_order; ++o) {
  if (buddy->num_free[o]) {
   m = 1 << (buddy->max_order - o);
   *seg = find_first_bit(buddy->bits[o], m);
   if (*seg < m)
    goto found;
  }
 }
 spin_unlock(&buddy->lock);
 return -1;

 found:
 clear_bit(*seg, buddy->bits[o]);
 --buddy->num_free[o];

 while (o > order) {
  --o;
  *seg <<= 1;
  set_bit(*seg ^ 1, buddy->bits[o]);
  ++buddy->num_free[o];
 }

 spin_unlock(&buddy->lock);

 *seg <<= order;
 return 0;
}
