
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_buckets {int * bucket; } ;
struct list_head {int dummy; } ;


 int RADEON_CS_MAX_PRIORITY ;
 int list_add_tail (struct list_head*,int *) ;
 size_t min (unsigned int,int ) ;

__attribute__((used)) static void radeon_cs_buckets_add(struct radeon_cs_buckets *b,
      struct list_head *item, unsigned priority)
{





 list_add_tail(item, &b->bucket[min(priority, RADEON_CS_MAX_PRIORITY)]);
}
