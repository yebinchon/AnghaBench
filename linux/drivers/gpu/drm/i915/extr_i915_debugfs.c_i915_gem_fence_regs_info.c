
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct i915_vma {int obj; } ;
struct i915_fence_reg {int pin_count; struct i915_vma* vma; } ;
struct TYPE_2__ {unsigned int num_fences; struct i915_fence_reg* fence_regs; } ;
struct drm_i915_private {TYPE_1__ ggtt; } ;


 int atomic_read (int *) ;
 int describe_obj (struct seq_file*,int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,unsigned int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int i915_gem_fence_regs_info(struct seq_file *m, void *data)
{
 struct drm_i915_private *i915 = node_to_i915(m->private);
 unsigned int i;

 seq_printf(m, "Total fences = %d\n", i915->ggtt.num_fences);

 rcu_read_lock();
 for (i = 0; i < i915->ggtt.num_fences; i++) {
  struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
  struct i915_vma *vma = reg->vma;

  seq_printf(m, "Fence %d, pin count = %d, object = ",
      i, atomic_read(&reg->pin_count));
  if (!vma)
   seq_puts(m, "unused");
  else
   describe_obj(m, vma->obj);
  seq_putc(m, '\n');
 }
 rcu_read_unlock();

 return 0;
}
