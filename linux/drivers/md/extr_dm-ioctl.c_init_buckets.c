
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 unsigned int NUM_BUCKETS ;

__attribute__((used)) static void init_buckets(struct list_head *buckets)
{
 unsigned int i;

 for (i = 0; i < NUM_BUCKETS; i++)
  INIT_LIST_HEAD(buckets + i);
}
