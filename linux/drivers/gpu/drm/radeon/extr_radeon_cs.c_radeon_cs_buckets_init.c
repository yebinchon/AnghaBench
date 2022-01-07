
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_cs_buckets {int * bucket; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int RADEON_CS_NUM_BUCKETS ;

__attribute__((used)) static void radeon_cs_buckets_init(struct radeon_cs_buckets *b)
{
 unsigned i;

 for (i = 0; i < RADEON_CS_NUM_BUCKETS; i++)
  INIT_LIST_HEAD(&b->bucket[i]);
}
