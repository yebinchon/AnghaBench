
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DROP_ALL ;

__attribute__((used)) static int
i915_drop_caches_get(void *data, u64 *val)
{
 *val = DROP_ALL;

 return 0;
}
