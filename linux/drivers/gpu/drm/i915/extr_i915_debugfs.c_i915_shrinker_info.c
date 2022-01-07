
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_3__ {int batch; int seeks; } ;
struct TYPE_4__ {TYPE_1__ shrinker; } ;
struct drm_i915_private {TYPE_2__ mm; } ;


 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i915_shrinker_info(struct seq_file *m, void *unused)
{
 struct drm_i915_private *i915 = node_to_i915(m->private);

 seq_printf(m, "seeks = %d\n", i915->mm.shrinker.seeks);
 seq_printf(m, "batch = %lu\n", i915->mm.shrinker.batch);

 return 0;
}
