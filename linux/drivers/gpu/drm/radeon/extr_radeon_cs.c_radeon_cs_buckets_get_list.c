
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_buckets {int * bucket; } ;
struct list_head {int dummy; } ;


 unsigned int RADEON_CS_NUM_BUCKETS ;
 int list_splice (int *,struct list_head*) ;

__attribute__((used)) static void radeon_cs_buckets_get_list(struct radeon_cs_buckets *b,
           struct list_head *out_list)
{
 unsigned i;


 for (i = 0; i < RADEON_CS_NUM_BUCKETS; i++) {
  list_splice(&b->bucket[i], out_list);
 }
}
