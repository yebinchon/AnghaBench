
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_execbuffer {int lut_size; int buckets; } ;
struct hlist_head {int dummy; } ;


 int eb_release_vmas (struct i915_execbuffer const*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void eb_reset_vmas(const struct i915_execbuffer *eb)
{
 eb_release_vmas(eb);
 if (eb->lut_size > 0)
  memset(eb->buckets, 0,
         sizeof(struct hlist_head) << eb->lut_size);
}
