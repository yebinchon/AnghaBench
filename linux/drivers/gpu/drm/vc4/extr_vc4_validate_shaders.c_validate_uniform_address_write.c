
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct vc4_validated_shader_info {int uniforms_size; } ;
struct vc4_shader_validation_state {int* shader; size_t ip; int* live_immediates; int needs_uniform_address_update; int needs_uniform_address_for_loop; } ;


 int DRM_DEBUG (char*,...) ;
 int QPU_ADD_B ;
 int QPU_A_ADD ;
 int QPU_COND_ADD ;
 int QPU_COND_ALWAYS ;
 int QPU_GET_FIELD (int,int ) ;
 int QPU_MUX_A ;
 int QPU_MUX_B ;
 int QPU_OP_ADD ;
 int QPU_PACK ;
 int QPU_PACK_A_NOP ;
 int QPU_PM ;
 int QPU_RADDR_A ;
 int QPU_RADDR_B ;
 int QPU_R_UNIF ;
 int QPU_SIG ;





 int raddr_add_a_to_live_reg_index (int) ;
 int require_uniform_address_uniform (struct vc4_validated_shader_info*) ;

__attribute__((used)) static bool
validate_uniform_address_write(struct vc4_validated_shader_info *validated_shader,
          struct vc4_shader_validation_state *validation_state,
          bool is_mul)
{
 uint64_t inst = validation_state->shader[validation_state->ip];
 u32 add_b = QPU_GET_FIELD(inst, QPU_ADD_B);
 u32 raddr_a = QPU_GET_FIELD(inst, QPU_RADDR_A);
 u32 raddr_b = QPU_GET_FIELD(inst, QPU_RADDR_B);
 u32 add_lri = raddr_add_a_to_live_reg_index(inst);



 u32 expected_offset = validated_shader->uniforms_size + 4;
 switch (QPU_GET_FIELD(inst, QPU_SIG)) {
 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
  break;
 default:
  DRM_DEBUG("uniforms address change must be "
     "normal math\n");
  return 0;
 }

 if (is_mul || QPU_GET_FIELD(inst, QPU_OP_ADD) != QPU_A_ADD) {
  DRM_DEBUG("Uniform address reset must be an ADD.\n");
  return 0;
 }

 if (QPU_GET_FIELD(inst, QPU_COND_ADD) != QPU_COND_ALWAYS) {
  DRM_DEBUG("Uniform address reset must be unconditional.\n");
  return 0;
 }

 if (QPU_GET_FIELD(inst, QPU_PACK) != QPU_PACK_A_NOP &&
     !(inst & QPU_PM)) {
  DRM_DEBUG("No packing allowed on uniforms reset\n");
  return 0;
 }

 if (add_lri == -1) {
  DRM_DEBUG("First argument of uniform address write must be "
     "an immediate value.\n");
  return 0;
 }

 if (validation_state->live_immediates[add_lri] != expected_offset) {
  DRM_DEBUG("Resetting uniforms with offset %db instead of %db\n",
     validation_state->live_immediates[add_lri],
     expected_offset);
  return 0;
 }

 if (!(add_b == QPU_MUX_A && raddr_a == QPU_R_UNIF) &&
     !(add_b == QPU_MUX_B && raddr_b == QPU_R_UNIF)) {
  DRM_DEBUG("Second argument of uniform address write must be "
     "a uniform.\n");
  return 0;
 }

 validation_state->needs_uniform_address_update = 0;
 validation_state->needs_uniform_address_for_loop = 0;
 return require_uniform_address_uniform(validated_shader);
}
