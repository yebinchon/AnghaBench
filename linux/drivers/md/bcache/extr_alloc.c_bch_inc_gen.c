
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct cache {TYPE_1__* set; } ;
struct bucket {int gen; } ;
struct TYPE_2__ {scalar_t__ need_gc; } ;


 scalar_t__ BUCKET_GC_GEN_MAX ;
 int WARN_ON_ONCE (int) ;
 int bucket_gc_gen (struct bucket*) ;
 scalar_t__ max (scalar_t__,int ) ;

uint8_t bch_inc_gen(struct cache *ca, struct bucket *b)
{
 uint8_t ret = ++b->gen;

 ca->set->need_gc = max(ca->set->need_gc, bucket_gc_gen(b));
 WARN_ON_ONCE(ca->set->need_gc > BUCKET_GC_GEN_MAX);

 return ret;
}
