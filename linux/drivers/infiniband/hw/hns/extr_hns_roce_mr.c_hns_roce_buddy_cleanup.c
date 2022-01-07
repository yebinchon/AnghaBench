
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_buddy {int max_order; int * num_free; int * bits; } ;


 int kfree (int *) ;
 int kvfree (int ) ;

__attribute__((used)) static void hns_roce_buddy_cleanup(struct hns_roce_buddy *buddy)
{
 int i;

 for (i = 0; i <= buddy->max_order; ++i)
  kvfree(buddy->bits[i]);

 kfree(buddy->bits);
 kfree(buddy->num_free);
}
