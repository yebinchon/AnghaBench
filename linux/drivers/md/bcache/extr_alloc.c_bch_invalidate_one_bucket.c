
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache {int buckets; int free_inc; } ;
struct bucket {int dummy; } ;


 int __bch_invalidate_one_bucket (struct cache*,struct bucket*) ;
 int fifo_push (int *,struct bucket*) ;

__attribute__((used)) static void bch_invalidate_one_bucket(struct cache *ca, struct bucket *b)
{
 __bch_invalidate_one_bucket(ca, b);

 fifo_push(&ca->free_inc, b - ca->buckets);
}
