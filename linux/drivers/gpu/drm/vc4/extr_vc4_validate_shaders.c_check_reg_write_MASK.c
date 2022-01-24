#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int u32 ;
struct vc4_validated_shader_info {int dummy; } ;
struct vc4_shader_validation_state {int* shader; size_t ip; int all_registers_used; scalar_t__* live_immediates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  QPU_COND_ADD ; 
 scalar_t__ QPU_COND_ALWAYS ; 
 int /*<<< orphan*/  QPU_COND_MUL ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QPU_LOAD_IMM ; 
 int /*<<< orphan*/  QPU_PACK ; 
 scalar_t__ QPU_PACK_A_NOP ; 
 int /*<<< orphan*/  QPU_SIG ; 
 scalar_t__ QPU_SIG_LOAD_IMM ; 
 int /*<<< orphan*/  QPU_WADDR_ADD ; 
 int /*<<< orphan*/  QPU_WADDR_MUL ; 
 int QPU_WS ; 
#define  QPU_W_HOST_INT 147 
#define  QPU_W_MUTEX_RELEASE 146 
#define  QPU_W_TLB_ALPHA_MASK 145 
#define  QPU_W_TLB_COLOR_ALL 144 
#define  QPU_W_TLB_COLOR_MS 143 
#define  QPU_W_TLB_STENCIL_SETUP 142 
#define  QPU_W_TLB_Z 141 
#define  QPU_W_TMU0_B 140 
#define  QPU_W_TMU0_R 139 
#define  QPU_W_TMU0_S 138 
#define  QPU_W_TMU0_T 137 
#define  QPU_W_TMU1_B 136 
#define  QPU_W_TMU1_R 135 
#define  QPU_W_TMU1_S 134 
#define  QPU_W_TMU1_T 133 
#define  QPU_W_TMU_NOSWAP 132 
#define  QPU_W_UNIFORMS_ADDRESS 131 
#define  QPU_W_VPM 130 
#define  QPU_W_VPMVCD_SETUP 129 
#define  QPU_W_VPM_ADDR 128 
 int FUNC2 (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,int) ; 
 int FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC6(struct vc4_validated_shader_info *validated_shader,
		struct vc4_shader_validation_state *validation_state,
		bool is_mul)
{
	uint64_t inst = validation_state->shader[validation_state->ip];
	uint32_t waddr = (is_mul ?
			  FUNC1(inst, QPU_WADDR_MUL) :
			  FUNC1(inst, QPU_WADDR_ADD));
	uint32_t sig = FUNC1(inst, QPU_SIG);
	bool ws = inst & QPU_WS;
	bool is_b = is_mul ^ ws;
	u32 lri = FUNC5(waddr, is_b);

	if (lri != -1) {
		uint32_t cond_add = FUNC1(inst, QPU_COND_ADD);
		uint32_t cond_mul = FUNC1(inst, QPU_COND_MUL);

		if (sig == QPU_SIG_LOAD_IMM &&
		    FUNC1(inst, QPU_PACK) == QPU_PACK_A_NOP &&
		    ((is_mul && cond_mul == QPU_COND_ALWAYS) ||
		     (!is_mul && cond_add == QPU_COND_ALWAYS))) {
			validation_state->live_immediates[lri] =
				FUNC1(inst, QPU_LOAD_IMM);
		} else {
			validation_state->live_immediates[lri] = ~0;
		}

		if (FUNC3(lri))
			validation_state->all_registers_used = true;
	}

	switch (waddr) {
	case QPU_W_UNIFORMS_ADDRESS:
		if (is_b) {
			FUNC0("relative uniforms address change "
				  "unsupported\n");
			return false;
		}

		return FUNC4(validated_shader,
						      validation_state,
						      is_mul);

	case QPU_W_TLB_COLOR_MS:
	case QPU_W_TLB_COLOR_ALL:
	case QPU_W_TLB_Z:
		/* These only interact with the tile buffer, not main memory,
		 * so they're safe.
		 */
		return true;

	case QPU_W_TMU0_S:
	case QPU_W_TMU0_T:
	case QPU_W_TMU0_R:
	case QPU_W_TMU0_B:
	case QPU_W_TMU1_S:
	case QPU_W_TMU1_T:
	case QPU_W_TMU1_R:
	case QPU_W_TMU1_B:
		return FUNC2(validated_shader, validation_state,
				       is_mul);

	case QPU_W_HOST_INT:
	case QPU_W_TMU_NOSWAP:
	case QPU_W_TLB_ALPHA_MASK:
	case QPU_W_MUTEX_RELEASE:
		/* XXX: I haven't thought about these, so don't support them
		 * for now.
		 */
		FUNC0("Unsupported waddr %d\n", waddr);
		return false;

	case QPU_W_VPM_ADDR:
		FUNC0("General VPM DMA unsupported\n");
		return false;

	case QPU_W_VPM:
	case QPU_W_VPMVCD_SETUP:
		/* We allow VPM setup in general, even including VPM DMA
		 * configuration setup, because the (unsafe) DMA can only be
		 * triggered by QPU_W_VPM_ADDR writes.
		 */
		return true;

	case QPU_W_TLB_STENCIL_SETUP:
		return true;
	}

	return true;
}