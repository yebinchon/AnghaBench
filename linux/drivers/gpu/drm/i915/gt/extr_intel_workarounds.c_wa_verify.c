
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_wa {int val; int read; int mask; int reg; } ;


 int DRM_ERROR (char*,char const*,char const*,int ,int,int,int,int ) ;
 int i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool
wa_verify(const struct i915_wa *wa, u32 cur, const char *name, const char *from)
{
 if ((cur ^ wa->val) & wa->read) {
  DRM_ERROR("%s workaround lost on %s! (%x=%x/%x, expected %x, mask=%x)\n",
     name, from, i915_mmio_reg_offset(wa->reg),
     cur, cur & wa->read,
     wa->val, wa->mask);

  return 0;
 }

 return 1;
}
