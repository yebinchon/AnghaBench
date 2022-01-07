
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active {int mutex; int count; } ;


 int GEM_BUG_ON (int) ;
 int SINGLE_DEPTH_NESTING ;
 int __active_retire (struct i915_active*) ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 int atomic_read (int *) ;
 int mutex_lock_nested (int *,int ) ;

__attribute__((used)) static void
active_retire(struct i915_active *ref)
{
 GEM_BUG_ON(!atomic_read(&ref->count));
 if (atomic_add_unless(&ref->count, -1, 1))
  return;


 mutex_lock_nested(&ref->mutex, SINGLE_DEPTH_NESTING);
 __active_retire(ref);
}
