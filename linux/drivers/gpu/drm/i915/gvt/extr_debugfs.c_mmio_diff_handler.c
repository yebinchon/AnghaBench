
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mmio_diff_param {int total; int diff; int diff_mmio_list; int vgpu; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {int uncore; } ;
struct diff_mmio {int node; scalar_t__ vreg; scalar_t__ preg; scalar_t__ offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int _MMIO (scalar_t__) ;
 scalar_t__ intel_uncore_read_notrace (int *,int ) ;
 struct diff_mmio* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ vgpu_vreg (int ,scalar_t__) ;

__attribute__((used)) static inline int mmio_diff_handler(struct intel_gvt *gvt,
        u32 offset, void *data)
{
 struct drm_i915_private *i915 = gvt->dev_priv;
 struct mmio_diff_param *param = data;
 struct diff_mmio *node;
 u32 preg, vreg;

 preg = intel_uncore_read_notrace(&i915->uncore, _MMIO(offset));
 vreg = vgpu_vreg(param->vgpu, offset);

 if (preg != vreg) {
  node = kmalloc(sizeof(*node), GFP_KERNEL);
  if (!node)
   return -ENOMEM;

  node->offset = offset;
  node->preg = preg;
  node->vreg = vreg;
  list_add(&node->node, &param->diff_mmio_list);
  param->diff++;
 }
 param->total++;
 return 0;
}
