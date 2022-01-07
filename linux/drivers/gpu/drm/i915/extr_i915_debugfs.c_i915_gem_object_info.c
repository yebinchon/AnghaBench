
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_3__ {int struct_mutex; } ;
struct TYPE_4__ {int shrink_memory; int free_count; int shrink_count; } ;
struct drm_i915_private {TYPE_1__ drm; TYPE_2__ mm; } ;


 int atomic_read (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int print_context_stats (struct seq_file*,struct drm_i915_private*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int i915_gem_object_info(struct seq_file *m, void *data)
{
 struct drm_i915_private *i915 = node_to_i915(m->private);
 int ret;

 seq_printf(m, "%u shrinkable [%u free] objects, %llu bytes\n",
     i915->mm.shrink_count,
     atomic_read(&i915->mm.free_count),
     i915->mm.shrink_memory);

 seq_putc(m, '\n');

 ret = mutex_lock_interruptible(&i915->drm.struct_mutex);
 if (ret)
  return ret;

 print_context_stats(m, i915);
 mutex_unlock(&i915->drm.struct_mutex);

 return 0;
}
