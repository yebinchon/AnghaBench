
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct intel_engine_cs {int name; } ;
struct drm_i915_reg_descriptor {int mask; size_t const value; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {size_t step; size_t offset; size_t const mask; } ;
struct drm_i915_cmd_descriptor {int flags; TYPE_3__* bits; TYPE_2__ cmd; TYPE_1__ reg; } ;
struct TYPE_6__ {size_t const mask; scalar_t__ condition_mask; size_t condition_offset; size_t offset; size_t expected; } ;


 int CMD_DESC_BITMASK ;
 int CMD_DESC_REGISTER ;
 int CMD_DESC_REJECT ;
 int CMD_DESC_SKIP ;
 int DRM_DEBUG_DRIVER (char*,size_t const,...) ;
 int MAX_CMD_DESC_BITMASKS ;
 scalar_t__ MI_LOAD_REGISTER_IMM (int) ;
 scalar_t__ MI_LOAD_REGISTER_MEM ;
 scalar_t__ MI_LOAD_REGISTER_REG ;
 struct drm_i915_reg_descriptor* find_reg (struct intel_engine_cs const*,size_t const) ;

__attribute__((used)) static bool check_cmd(const struct intel_engine_cs *engine,
        const struct drm_i915_cmd_descriptor *desc,
        const u32 *cmd, u32 length)
{
 if (desc->flags & CMD_DESC_SKIP)
  return 1;

 if (desc->flags & CMD_DESC_REJECT) {
  DRM_DEBUG_DRIVER("CMD: Rejected command: 0x%08X\n", *cmd);
  return 0;
 }

 if (desc->flags & CMD_DESC_REGISTER) {





  const u32 step = desc->reg.step ? desc->reg.step : length;
  u32 offset;

  for (offset = desc->reg.offset; offset < length;
       offset += step) {
   const u32 reg_addr = cmd[offset] & desc->reg.mask;
   const struct drm_i915_reg_descriptor *reg =
    find_reg(engine, reg_addr);

   if (!reg) {
    DRM_DEBUG_DRIVER("CMD: Rejected register 0x%08X in command: 0x%08X (%s)\n",
       reg_addr, *cmd, engine->name);
    return 0;
   }





   if (reg->mask) {
    if (desc->cmd.value == MI_LOAD_REGISTER_MEM) {
     DRM_DEBUG_DRIVER("CMD: Rejected LRM to masked register 0x%08X\n",
        reg_addr);
     return 0;
    }

    if (desc->cmd.value == MI_LOAD_REGISTER_REG) {
     DRM_DEBUG_DRIVER("CMD: Rejected LRR to masked register 0x%08X\n",
        reg_addr);
     return 0;
    }

    if (desc->cmd.value == MI_LOAD_REGISTER_IMM(1) &&
        (offset + 2 > length ||
         (cmd[offset + 1] & reg->mask) != reg->value)) {
     DRM_DEBUG_DRIVER("CMD: Rejected LRI to masked register 0x%08X\n",
        reg_addr);
     return 0;
    }
   }
  }
 }

 if (desc->flags & CMD_DESC_BITMASK) {
  int i;

  for (i = 0; i < MAX_CMD_DESC_BITMASKS; i++) {
   u32 dword;

   if (desc->bits[i].mask == 0)
    break;

   if (desc->bits[i].condition_mask != 0) {
    u32 offset =
     desc->bits[i].condition_offset;
    u32 condition = cmd[offset] &
     desc->bits[i].condition_mask;

    if (condition == 0)
     continue;
   }

   if (desc->bits[i].offset >= length) {
    DRM_DEBUG_DRIVER("CMD: Rejected command 0x%08X, too short to check bitmask (%s)\n",
       *cmd, engine->name);
    return 0;
   }

   dword = cmd[desc->bits[i].offset] &
    desc->bits[i].mask;

   if (dword != desc->bits[i].expected) {
    DRM_DEBUG_DRIVER("CMD: Rejected command 0x%08X for bitmask 0x%08X (exp=0x%08X act=0x%08X) (%s)\n",
       *cmd,
       desc->bits[i].mask,
       desc->bits[i].expected,
       dword, engine->name);
    return 0;
   }
  }
 }

 return 1;
}
