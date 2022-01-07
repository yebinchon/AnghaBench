
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_table {int dummy; } ;
struct i915_page_directory {struct i915_page_table** entry; } ;



__attribute__((used)) static inline struct i915_page_table *
i915_pt_entry(const struct i915_page_directory * const pd,
       const unsigned short n)
{
 return pd->entry[n];
}
