
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_page_directory {int lock; } ;


 int I915_GFP_ALLOW_FAIL ;
 struct i915_page_directory* kzalloc (size_t,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct i915_page_directory *__alloc_pd(size_t sz)
{
 struct i915_page_directory *pd;

 pd = kzalloc(sz, I915_GFP_ALLOW_FAIL);
 if (unlikely(!pd))
  return ((void*)0);

 spin_lock_init(&pd->lock);
 return pd;
}
