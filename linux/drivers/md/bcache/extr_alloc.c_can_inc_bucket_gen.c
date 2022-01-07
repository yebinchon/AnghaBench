
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bucket {int dummy; } ;


 scalar_t__ BUCKET_GC_GEN_MAX ;
 scalar_t__ bucket_gc_gen (struct bucket*) ;

__attribute__((used)) static inline bool can_inc_bucket_gen(struct bucket *b)
{
 return bucket_gc_gen(b) < BUCKET_GC_GEN_MAX;
}
