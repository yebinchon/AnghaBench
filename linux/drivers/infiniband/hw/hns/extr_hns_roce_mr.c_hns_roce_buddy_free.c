
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_buddy {int lock; int * num_free; int * bits; } ;


 int clear_bit (unsigned long,int ) ;
 int set_bit (unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (unsigned long,int ) ;

__attribute__((used)) static void hns_roce_buddy_free(struct hns_roce_buddy *buddy, unsigned long seg,
    int order)
{
 seg >>= order;

 spin_lock(&buddy->lock);

 while (test_bit(seg ^ 1, buddy->bits[order])) {
  clear_bit(seg ^ 1, buddy->bits[order]);
  --buddy->num_free[order];
  seg >>= 1;
  ++order;
 }

 set_bit(seg, buddy->bits[order]);
 ++buddy->num_free[order];

 spin_unlock(&buddy->lock);
}
