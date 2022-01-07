
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int dummy; } ;
struct dm_btree_value_type {int size; int equal; int dec; int inc; struct dm_transaction_manager* context; } ;
typedef int __le64 ;


 int le64_dec ;
 int le64_equal ;
 int le64_inc ;

void init_le64_type(struct dm_transaction_manager *tm,
      struct dm_btree_value_type *vt)
{
 vt->context = tm;
 vt->size = sizeof(__le64);
 vt->inc = le64_inc;
 vt->dec = le64_dec;
 vt->equal = le64_equal;
}
