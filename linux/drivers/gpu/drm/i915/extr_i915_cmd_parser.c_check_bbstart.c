
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i915_gem_context {int jump_whitelist_cmds; int jump_whitelist; int i915; } ;


 scalar_t__ CMDPARSER_USES_GGTT (int ) ;
 int DRM_DEBUG (char*,...) ;
 int EACCES ;
 int EINVAL ;
 int lower_32_bits (int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static int check_bbstart(const struct i915_gem_context *ctx,
    u32 *cmd, u32 offset, u32 length,
    u32 batch_len,
    u64 batch_start,
    u64 shadow_batch_start)
{
 u64 jump_offset, jump_target;
 u32 target_cmd_offset, target_cmd_index;


 if (CMDPARSER_USES_GGTT(ctx->i915)) {
  DRM_DEBUG("CMD: Rejecting BB_START for ggtt based submission\n");
  return -EACCES;
 }

 if (length != 3) {
  DRM_DEBUG("CMD: Recursive BB_START with bad length(%u)\n",
     length);
  return -EINVAL;
 }

 jump_target = *(u64*)(cmd+1);
 jump_offset = jump_target - batch_start;





 if (jump_offset >= batch_len) {
  DRM_DEBUG("CMD: BB_START to 0x%llx jumps out of BB\n",
     jump_target);
  return -EINVAL;
 }





 target_cmd_offset = lower_32_bits(jump_offset);
 target_cmd_index = target_cmd_offset / sizeof(u32);

 *(u64*)(cmd + 1) = shadow_batch_start + target_cmd_offset;

 if (target_cmd_index == offset)
  return 0;

 if (ctx->jump_whitelist_cmds <= target_cmd_index) {
  DRM_DEBUG("CMD: Rejecting BB_START - truncated whitelist array\n");
  return -EINVAL;
 } else if (!test_bit(target_cmd_index, ctx->jump_whitelist)) {
  DRM_DEBUG("CMD: BB_START to 0x%llx not a previously executed cmd\n",
     jump_target);
  return -EINVAL;
 }

 return 0;
}
