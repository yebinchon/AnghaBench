
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_vma {int active; } ;
struct drm_i915_error_object {int dummy; } ;
struct capture_vma {void** slot; struct capture_vma* next; } ;


 int ATOMIC_MAYFAIL ;
 int i915_active_trygrab (int *) ;
 void* i915_vma_get (struct i915_vma*) ;
 int kfree (struct capture_vma*) ;
 struct capture_vma* kmalloc (int,int ) ;

__attribute__((used)) static struct capture_vma *
capture_vma(struct capture_vma *next,
     struct i915_vma *vma,
     struct drm_i915_error_object **out)
{
 struct capture_vma *c;

 *out = ((void*)0);
 if (!vma)
  return next;

 c = kmalloc(sizeof(*c), ATOMIC_MAYFAIL);
 if (!c)
  return next;

 if (!i915_active_trygrab(&vma->active)) {
  kfree(c);
  return next;
 }

 c->slot = (void **)out;
 *c->slot = i915_vma_get(vma);

 c->next = next;
 return c;
}
