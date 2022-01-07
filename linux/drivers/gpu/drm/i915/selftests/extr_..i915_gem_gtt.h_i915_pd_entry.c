
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_directory {struct i915_page_directory** entry; } ;



__attribute__((used)) static inline struct i915_page_directory *
i915_pd_entry(const struct i915_page_directory * const pdp,
       const unsigned short n)
{
 return pdp->entry[n];
}
