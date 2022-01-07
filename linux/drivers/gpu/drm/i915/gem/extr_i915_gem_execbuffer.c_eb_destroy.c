
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rq; } ;
struct i915_execbuffer {scalar_t__ lut_size; int buckets; TYPE_1__ reloc_cache; } ;


 int GEM_BUG_ON (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void eb_destroy(const struct i915_execbuffer *eb)
{
 GEM_BUG_ON(eb->reloc_cache.rq);

 if (eb->lut_size > 0)
  kfree(eb->buckets);
}
