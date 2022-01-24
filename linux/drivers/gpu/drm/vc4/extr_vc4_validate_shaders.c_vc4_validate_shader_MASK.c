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
typedef  int /*<<< orphan*/  validation_state ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
struct vc4_validated_shader_info {int is_threaded; int num_texture_samples; struct vc4_validated_shader_info* texture_samples; struct vc4_validated_shader_info* uniform_addr_offsets; scalar_t__ uniforms_size; scalar_t__ uniforms_src_size; } ;
struct vc4_shader_validation_state {int max_ip; size_t ip; int* live_max_clamp_regs; struct vc4_validated_shader_info* branch_targets; scalar_t__ needs_uniform_address_for_loop; scalar_t__ all_registers_used; int /*<<< orphan*/ * live_immediates; int /*<<< orphan*/ * live_min_clamp_offsets; int /*<<< orphan*/ * shader; } ;
struct TYPE_2__ {int size; } ;
struct drm_gem_cma_object {TYPE_1__ base; int /*<<< orphan*/ * vaddr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LIVE_REG_COUNT ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QPU_SIG ; 
#define  QPU_SIG_BRANCH 139 
#define  QPU_SIG_COLOR_LOAD 138 
#define  QPU_SIG_LAST_THREAD_SWITCH 137 
#define  QPU_SIG_LOAD_IMM 136 
#define  QPU_SIG_LOAD_TMU0 135 
#define  QPU_SIG_LOAD_TMU1 134 
#define  QPU_SIG_NONE 133 
#define  QPU_SIG_PROG_END 132 
#define  QPU_SIG_SCOREBOARD_UNLOCK 131 
#define  QPU_SIG_SMALL_IMM 130 
#define  QPU_SIG_THREAD_SWITCH 129 
#define  QPU_SIG_WAIT_FOR_SCOREBOARD 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vc4_validated_shader_info*,struct vc4_shader_validation_state*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_validated_shader_info*,struct vc4_shader_validation_state*) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vc4_validated_shader_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct vc4_shader_validation_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vc4_validated_shader_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct vc4_shader_validation_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct vc4_shader_validation_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct vc4_shader_validation_state*) ; 

struct vc4_validated_shader_info *
FUNC13(struct drm_gem_cma_object *shader_obj)
{
	bool found_shader_end = false;
	int shader_end_ip = 0;
	uint32_t last_thread_switch_ip = -3;
	uint32_t ip;
	struct vc4_validated_shader_info *validated_shader = NULL;
	struct vc4_shader_validation_state validation_state;

	FUNC8(&validation_state, 0, sizeof(validation_state));
	validation_state.shader = shader_obj->vaddr;
	validation_state.max_ip = shader_obj->base.size / sizeof(uint64_t);

	FUNC10(&validation_state);

	validation_state.branch_targets =
		FUNC6(FUNC0(validation_state.max_ip),
			sizeof(unsigned long), GFP_KERNEL);
	if (!validation_state.branch_targets)
		goto fail;

	validated_shader = FUNC6(1, sizeof(*validated_shader), GFP_KERNEL);
	if (!validated_shader)
		goto fail;

	if (!FUNC12(&validation_state))
		goto fail;

	for (ip = 0; ip < validation_state.max_ip; ip++) {
		uint64_t inst = validation_state.shader[ip];
		uint32_t sig = FUNC2(inst, QPU_SIG);

		validation_state.ip = ip;

		if (!FUNC11(&validation_state))
			goto fail;

		if (ip == last_thread_switch_ip + 3) {
			/* Reset r0-r3 live clamp data */
			int i;

			for (i = 64; i < LIVE_REG_COUNT; i++) {
				validation_state.live_min_clamp_offsets[i] = ~0;
				validation_state.live_max_clamp_regs[i] = false;
				validation_state.live_immediates[i] = ~0;
			}
		}

		switch (sig) {
		case QPU_SIG_NONE:
		case QPU_SIG_WAIT_FOR_SCOREBOARD:
		case QPU_SIG_SCOREBOARD_UNLOCK:
		case QPU_SIG_COLOR_LOAD:
		case QPU_SIG_LOAD_TMU0:
		case QPU_SIG_LOAD_TMU1:
		case QPU_SIG_PROG_END:
		case QPU_SIG_SMALL_IMM:
		case QPU_SIG_THREAD_SWITCH:
		case QPU_SIG_LAST_THREAD_SWITCH:
			if (!FUNC5(validated_shader,
						      &validation_state)) {
				FUNC1("Bad write at ip %d\n", ip);
				goto fail;
			}

			if (!FUNC4(validated_shader,
						     &validation_state))
				goto fail;

			if (sig == QPU_SIG_PROG_END) {
				found_shader_end = true;
				shader_end_ip = ip;
			}

			if (sig == QPU_SIG_THREAD_SWITCH ||
			    sig == QPU_SIG_LAST_THREAD_SWITCH) {
				validated_shader->is_threaded = true;

				if (ip < last_thread_switch_ip + 3) {
					FUNC1("Thread switch too soon after "
						  "last switch at ip %d\n", ip);
					goto fail;
				}
				last_thread_switch_ip = ip;
			}

			break;

		case QPU_SIG_LOAD_IMM:
			if (!FUNC5(validated_shader,
						      &validation_state)) {
				FUNC1("Bad LOAD_IMM write at ip %d\n", ip);
				goto fail;
			}
			break;

		case QPU_SIG_BRANCH:
			if (!FUNC3(inst, validated_shader,
					  &validation_state, ip))
				goto fail;

			if (ip < last_thread_switch_ip + 3) {
				FUNC1("Branch in thread switch at ip %d",
					  ip);
				goto fail;
			}

			break;
		default:
			FUNC1("Unsupported QPU signal %d at "
				  "instruction %d\n", sig, ip);
			goto fail;
		}

		/* There are two delay slots after program end is signaled
		 * that are still executed, then we're finished.
		 */
		if (found_shader_end && ip == shader_end_ip + 2)
			break;
	}

	if (ip == validation_state.max_ip) {
		FUNC1("shader failed to terminate before "
			  "shader BO end at %zd\n",
			  shader_obj->base.size);
		goto fail;
	}

	/* Might corrupt other thread */
	if (validated_shader->is_threaded &&
	    validation_state.all_registers_used) {
		FUNC1("Shader uses threading, but uses the upper "
			  "half of the registers, too\n");
		goto fail;
	}

	/* If we did a backwards branch and we haven't emitted a uniforms
	 * reset since then, we still need the uniforms stream to have the
	 * uniforms address available so that the backwards branch can do its
	 * uniforms reset.
	 *
	 * We could potentially prove that the backwards branch doesn't
	 * contain any uses of uniforms until program exit, but that doesn't
	 * seem to be worth the trouble.
	 */
	if (validation_state.needs_uniform_address_for_loop) {
		if (!FUNC9(validated_shader))
			goto fail;
		validated_shader->uniforms_size += 4;
	}

	/* Again, no chance of integer overflow here because the worst case
	 * scenario is 8 bytes of uniforms plus handles per 8-byte
	 * instruction.
	 */
	validated_shader->uniforms_src_size =
		(validated_shader->uniforms_size +
		 4 * validated_shader->num_texture_samples);

	FUNC7(validation_state.branch_targets);

	return validated_shader;

fail:
	FUNC7(validation_state.branch_targets);
	if (validated_shader) {
		FUNC7(validated_shader->uniform_addr_offsets);
		FUNC7(validated_shader->texture_samples);
		FUNC7(validated_shader);
	}
	return NULL;
}