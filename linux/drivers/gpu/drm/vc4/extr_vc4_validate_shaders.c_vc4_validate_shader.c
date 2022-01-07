
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int validation_state ;
typedef int uint64_t ;
typedef size_t uint32_t ;
struct vc4_validated_shader_info {int is_threaded; int num_texture_samples; struct vc4_validated_shader_info* texture_samples; struct vc4_validated_shader_info* uniform_addr_offsets; scalar_t__ uniforms_size; scalar_t__ uniforms_src_size; } ;
struct vc4_shader_validation_state {int max_ip; size_t ip; int* live_max_clamp_regs; struct vc4_validated_shader_info* branch_targets; scalar_t__ needs_uniform_address_for_loop; scalar_t__ all_registers_used; int * live_immediates; int * live_min_clamp_offsets; int * shader; } ;
struct TYPE_2__ {int size; } ;
struct drm_gem_cma_object {TYPE_1__ base; int * vaddr; } ;


 int BITS_TO_LONGS (int) ;
 int DRM_DEBUG (char*,...) ;
 int GFP_KERNEL ;
 int LIVE_REG_COUNT ;
 size_t QPU_GET_FIELD (int ,int ) ;
 int QPU_SIG ;
 int check_branch (int ,struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,size_t) ;
 int check_instruction_reads (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*) ;
 int check_instruction_writes (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct vc4_validated_shader_info*) ;
 int memset (struct vc4_shader_validation_state*,int ,int) ;
 int require_uniform_address_uniform (struct vc4_validated_shader_info*) ;
 int reset_validation_state (struct vc4_shader_validation_state*) ;
 int vc4_handle_branch_target (struct vc4_shader_validation_state*) ;
 int vc4_validate_branches (struct vc4_shader_validation_state*) ;

struct vc4_validated_shader_info *
vc4_validate_shader(struct drm_gem_cma_object *shader_obj)
{
 bool found_shader_end = 0;
 int shader_end_ip = 0;
 uint32_t last_thread_switch_ip = -3;
 uint32_t ip;
 struct vc4_validated_shader_info *validated_shader = ((void*)0);
 struct vc4_shader_validation_state validation_state;

 memset(&validation_state, 0, sizeof(validation_state));
 validation_state.shader = shader_obj->vaddr;
 validation_state.max_ip = shader_obj->base.size / sizeof(uint64_t);

 reset_validation_state(&validation_state);

 validation_state.branch_targets =
  kcalloc(BITS_TO_LONGS(validation_state.max_ip),
   sizeof(unsigned long), GFP_KERNEL);
 if (!validation_state.branch_targets)
  goto fail;

 validated_shader = kcalloc(1, sizeof(*validated_shader), GFP_KERNEL);
 if (!validated_shader)
  goto fail;

 if (!vc4_validate_branches(&validation_state))
  goto fail;

 for (ip = 0; ip < validation_state.max_ip; ip++) {
  uint64_t inst = validation_state.shader[ip];
  uint32_t sig = QPU_GET_FIELD(inst, QPU_SIG);

  validation_state.ip = ip;

  if (!vc4_handle_branch_target(&validation_state))
   goto fail;

  if (ip == last_thread_switch_ip + 3) {

   int i;

   for (i = 64; i < LIVE_REG_COUNT; i++) {
    validation_state.live_min_clamp_offsets[i] = ~0;
    validation_state.live_max_clamp_regs[i] = 0;
    validation_state.live_immediates[i] = ~0;
   }
  }

  switch (sig) {
  case 133:
  case 128:
  case 131:
  case 138:
  case 135:
  case 134:
  case 132:
  case 130:
  case 129:
  case 137:
   if (!check_instruction_writes(validated_shader,
            &validation_state)) {
    DRM_DEBUG("Bad write at ip %d\n", ip);
    goto fail;
   }

   if (!check_instruction_reads(validated_shader,
           &validation_state))
    goto fail;

   if (sig == 132) {
    found_shader_end = 1;
    shader_end_ip = ip;
   }

   if (sig == 129 ||
       sig == 137) {
    validated_shader->is_threaded = 1;

    if (ip < last_thread_switch_ip + 3) {
     DRM_DEBUG("Thread switch too soon after "
        "last switch at ip %d\n", ip);
     goto fail;
    }
    last_thread_switch_ip = ip;
   }

   break;

  case 136:
   if (!check_instruction_writes(validated_shader,
            &validation_state)) {
    DRM_DEBUG("Bad LOAD_IMM write at ip %d\n", ip);
    goto fail;
   }
   break;

  case 139:
   if (!check_branch(inst, validated_shader,
       &validation_state, ip))
    goto fail;

   if (ip < last_thread_switch_ip + 3) {
    DRM_DEBUG("Branch in thread switch at ip %d",
       ip);
    goto fail;
   }

   break;
  default:
   DRM_DEBUG("Unsupported QPU signal %d at "
      "instruction %d\n", sig, ip);
   goto fail;
  }




  if (found_shader_end && ip == shader_end_ip + 2)
   break;
 }

 if (ip == validation_state.max_ip) {
  DRM_DEBUG("shader failed to terminate before "
     "shader BO end at %zd\n",
     shader_obj->base.size);
  goto fail;
 }


 if (validated_shader->is_threaded &&
     validation_state.all_registers_used) {
  DRM_DEBUG("Shader uses threading, but uses the upper "
     "half of the registers, too\n");
  goto fail;
 }
 if (validation_state.needs_uniform_address_for_loop) {
  if (!require_uniform_address_uniform(validated_shader))
   goto fail;
  validated_shader->uniforms_size += 4;
 }





 validated_shader->uniforms_src_size =
  (validated_shader->uniforms_size +
   4 * validated_shader->num_texture_samples);

 kfree(validation_state.branch_targets);

 return validated_shader;

fail:
 kfree(validation_state.branch_targets);
 if (validated_shader) {
  kfree(validated_shader->uniform_addr_offsets);
  kfree(validated_shader->texture_samples);
  kfree(validated_shader);
 }
 return ((void*)0);
}
