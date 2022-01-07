
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct intel_opregion {int vbt_size; scalar_t__ vbt; } ;
struct TYPE_2__ {struct intel_opregion opregion; } ;


 TYPE_1__* node_to_i915 (int ) ;
 int seq_write (struct seq_file*,scalar_t__,int ) ;

__attribute__((used)) static int i915_vbt(struct seq_file *m, void *unused)
{
 struct intel_opregion *opregion = &node_to_i915(m->private)->opregion;

 if (opregion->vbt)
  seq_write(m, opregion->vbt, opregion->vbt_size);

 return 0;
}
