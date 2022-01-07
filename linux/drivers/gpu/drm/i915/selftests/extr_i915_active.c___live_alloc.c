
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct live_active {int base; int ref; } ;
struct drm_i915_private {int dummy; } ;


 int GFP_KERNEL ;
 int __live_active ;
 int __live_retire ;
 int i915_active_init (struct drm_i915_private*,int *,int ,int ) ;
 int kref_init (int *) ;
 struct live_active* kzalloc (int,int ) ;

__attribute__((used)) static struct live_active *__live_alloc(struct drm_i915_private *i915)
{
 struct live_active *active;

 active = kzalloc(sizeof(*active), GFP_KERNEL);
 if (!active)
  return ((void*)0);

 kref_init(&active->ref);
 i915_active_init(i915, &active->base, __live_active, __live_retire);

 return active;
}
