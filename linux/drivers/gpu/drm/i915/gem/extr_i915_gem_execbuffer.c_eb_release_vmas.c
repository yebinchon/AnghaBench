
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {unsigned int* exec_flags; } ;
struct i915_execbuffer {unsigned int buffer_count; unsigned int* flags; struct i915_vma** vma; } ;


 int GEM_BUG_ON (int) ;
 unsigned int __EXEC_OBJECT_HAS_PIN ;
 unsigned int __EXEC_OBJECT_HAS_REF ;
 int __eb_unreserve_vma (struct i915_vma*,unsigned int) ;
 int i915_vma_put (struct i915_vma*) ;

__attribute__((used)) static void eb_release_vmas(const struct i915_execbuffer *eb)
{
 const unsigned int count = eb->buffer_count;
 unsigned int i;

 for (i = 0; i < count; i++) {
  struct i915_vma *vma = eb->vma[i];
  unsigned int flags = eb->flags[i];

  if (!vma)
   break;

  GEM_BUG_ON(vma->exec_flags != &eb->flags[i]);
  vma->exec_flags = ((void*)0);
  eb->vma[i] = ((void*)0);

  if (flags & __EXEC_OBJECT_HAS_PIN)
   __eb_unreserve_vma(vma, flags);

  if (flags & __EXEC_OBJECT_HAS_REF)
   i915_vma_put(vma);
 }
}
