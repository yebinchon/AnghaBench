
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int I915_READ (int const) ;
 int intel_rc6_residency_us (struct drm_i915_private*,int const) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,char const*,int ,int ) ;

__attribute__((used)) static void print_rc6_res(struct seq_file *m,
     const char *title,
     const i915_reg_t reg)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);

 seq_printf(m, "%s %u (%llu us)\n",
     title, I915_READ(reg),
     intel_rc6_residency_us(dev_priv, reg));
}
