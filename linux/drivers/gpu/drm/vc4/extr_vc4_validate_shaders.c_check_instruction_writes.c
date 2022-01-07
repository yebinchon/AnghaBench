
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct vc4_validated_shader_info {int dummy; } ;
struct vc4_shader_validation_state {size_t ip; int * shader; } ;


 int DRM_DEBUG (char*) ;
 int QPU_GET_FIELD (int ,int ) ;
 int QPU_WADDR_ADD ;
 int QPU_WADDR_MUL ;
 scalar_t__ check_reg_write (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ;
 scalar_t__ is_tmu_write (int ) ;
 int track_live_clamps (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*) ;

__attribute__((used)) static bool
check_instruction_writes(struct vc4_validated_shader_info *validated_shader,
    struct vc4_shader_validation_state *validation_state)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 uint32_t waddr_add = QPU_GET_FIELD(inst, QPU_WADDR_ADD);
 uint32_t waddr_mul = QPU_GET_FIELD(inst, QPU_WADDR_MUL);
 bool ok;

 if (is_tmu_write(waddr_add) && is_tmu_write(waddr_mul)) {
  DRM_DEBUG("ADD and MUL both set up textures\n");
  return 0;
 }

 ok = (check_reg_write(validated_shader, validation_state, 0) &&
       check_reg_write(validated_shader, validation_state, 1));

 track_live_clamps(validated_shader, validation_state);

 return ok;
}
