
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i915_mm_struct {int kref; scalar_t__ mm; int node; int * mn; void* i915; } ;
struct drm_i915_private {int mm_lock; int mm_structs; } ;
struct TYPE_5__ {struct i915_mm_struct* mm; } ;
struct TYPE_4__ {int dev; } ;
struct drm_i915_gem_object {TYPE_2__ userptr; TYPE_1__ base; } ;
struct TYPE_6__ {scalar_t__ mm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct i915_mm_struct* __i915_mm_struct_find (struct drm_i915_private*,scalar_t__) ;
 TYPE_3__* current ;
 int hash_add (int ,int *,unsigned long) ;
 struct i915_mm_struct* kmalloc (int,int ) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 int mmgrab (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* to_i915 (int ) ;

__attribute__((used)) static int
i915_gem_userptr_init__mm_struct(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 struct i915_mm_struct *mm;
 int ret = 0;
 mutex_lock(&dev_priv->mm_lock);
 mm = __i915_mm_struct_find(dev_priv, current->mm);
 if (mm == ((void*)0)) {
  mm = kmalloc(sizeof(*mm), GFP_KERNEL);
  if (mm == ((void*)0)) {
   ret = -ENOMEM;
   goto out;
  }

  kref_init(&mm->kref);
  mm->i915 = to_i915(obj->base.dev);

  mm->mm = current->mm;
  mmgrab(current->mm);

  mm->mn = ((void*)0);


  hash_add(dev_priv->mm_structs,
    &mm->node, (unsigned long)mm->mm);
 } else
  kref_get(&mm->kref);

 obj->userptr.mm = mm;
out:
 mutex_unlock(&dev_priv->mm_lock);
 return ret;
}
