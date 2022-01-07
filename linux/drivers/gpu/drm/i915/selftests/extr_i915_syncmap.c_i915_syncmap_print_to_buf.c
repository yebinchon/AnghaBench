
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_syncmap {struct i915_syncmap* parent; } ;


 int __sync_print (struct i915_syncmap*,char*,unsigned long*,int ,int,int ) ;

__attribute__((used)) static bool
i915_syncmap_print_to_buf(struct i915_syncmap *p, char *buf, unsigned long sz)
{
 if (!p)
  return 0;

 while (p->parent)
  p = p->parent;

 __sync_print(p, buf, &sz, 0, 1, 0);
 return 1;
}
