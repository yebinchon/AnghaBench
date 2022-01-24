#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct vc4_validated_shader_info {int uniforms_size; } ;
struct vc4_shader_validation_state {size_t ip; int* tmu_write_count; scalar_t__* live_min_clamp_offsets; scalar_t__ needs_uniform_address_update; TYPE_1__* tmu_setup; int /*<<< orphan*/ * shader; } ;
struct TYPE_2__ {int* p_offset; int is_direct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  QPU_ADD_B ; 
 scalar_t__ QPU_A_ADD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ QPU_MUX_A ; 
 scalar_t__ QPU_MUX_B ; 
 int /*<<< orphan*/  QPU_OP_ADD ; 
 int /*<<< orphan*/  QPU_RADDR_A ; 
 int /*<<< orphan*/  QPU_RADDR_B ; 
 scalar_t__ QPU_R_UNIF ; 
 int /*<<< orphan*/  QPU_SIG ; 
 scalar_t__ QPU_SIG_SMALL_IMM ; 
 int /*<<< orphan*/  QPU_WADDR_ADD ; 
 int /*<<< orphan*/  QPU_WADDR_MUL ; 
 scalar_t__ QPU_W_TMU0_B ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ; 

__attribute__((used)) static bool
FUNC5(struct vc4_validated_shader_info *validated_shader,
		struct vc4_shader_validation_state *validation_state,
		bool is_mul)
{
	uint64_t inst = validation_state->shader[validation_state->ip];
	uint32_t waddr = (is_mul ?
			  FUNC1(inst, QPU_WADDR_MUL) :
			  FUNC1(inst, QPU_WADDR_ADD));
	uint32_t raddr_a = FUNC1(inst, QPU_RADDR_A);
	uint32_t raddr_b = FUNC1(inst, QPU_RADDR_B);
	int tmu = waddr > QPU_W_TMU0_B;
	bool submit = FUNC2(waddr);
	bool is_direct = submit && validation_state->tmu_write_count[tmu] == 0;
	uint32_t sig = FUNC1(inst, QPU_SIG);

	if (is_direct) {
		uint32_t add_b = FUNC1(inst, QPU_ADD_B);
		uint32_t clamp_reg, clamp_offset;

		if (sig == QPU_SIG_SMALL_IMM) {
			FUNC0("direct TMU read used small immediate\n");
			return false;
		}

		/* Make sure that this texture load is an add of the base
		 * address of the UBO to a clamped offset within the UBO.
		 */
		if (is_mul ||
		    FUNC1(inst, QPU_OP_ADD) != QPU_A_ADD) {
			FUNC0("direct TMU load wasn't an add\n");
			return false;
		}

		/* We assert that the clamped address is the first
		 * argument, and the UBO base address is the second argument.
		 * This is arbitrary, but simpler than supporting flipping the
		 * two either way.
		 */
		clamp_reg = FUNC3(inst);
		if (clamp_reg == ~0) {
			FUNC0("direct TMU load wasn't clamped\n");
			return false;
		}

		clamp_offset = validation_state->live_min_clamp_offsets[clamp_reg];
		if (clamp_offset == ~0) {
			FUNC0("direct TMU load wasn't clamped\n");
			return false;
		}

		/* Store the clamp value's offset in p1 (see reloc_tex() in
		 * vc4_validate.c).
		 */
		validation_state->tmu_setup[tmu].p_offset[1] =
			clamp_offset;

		if (!(add_b == QPU_MUX_A && raddr_a == QPU_R_UNIF) &&
		    !(add_b == QPU_MUX_B && raddr_b == QPU_R_UNIF)) {
			FUNC0("direct TMU load didn't add to a uniform\n");
			return false;
		}

		validation_state->tmu_setup[tmu].is_direct = true;
	} else {
		if (raddr_a == QPU_R_UNIF || (sig != QPU_SIG_SMALL_IMM &&
					      raddr_b == QPU_R_UNIF)) {
			FUNC0("uniform read in the same instruction as "
				  "texture setup.\n");
			return false;
		}
	}

	if (validation_state->tmu_write_count[tmu] >= 4) {
		FUNC0("TMU%d got too many parameters before dispatch\n",
			  tmu);
		return false;
	}
	validation_state->tmu_setup[tmu].p_offset[validation_state->tmu_write_count[tmu]] =
		validated_shader->uniforms_size;
	validation_state->tmu_write_count[tmu]++;
	/* Since direct uses a RADDR uniform reference, it will get counted in
	 * check_instruction_reads()
	 */
	if (!is_direct) {
		if (validation_state->needs_uniform_address_update) {
			FUNC0("Texturing with undefined uniform address\n");
			return false;
		}

		validated_shader->uniforms_size += 4;
	}

	if (submit) {
		if (!FUNC4(validated_shader,
					   validation_state, tmu)) {
			return false;
		}

		validation_state->tmu_write_count[tmu] = 0;
	}

	return true;
}