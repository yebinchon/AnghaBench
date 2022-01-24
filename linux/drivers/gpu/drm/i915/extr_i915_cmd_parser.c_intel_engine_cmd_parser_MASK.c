#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct intel_engine_cs {int dummy; } ;
struct i915_gem_context {int jump_whitelist_cmds; int /*<<< orphan*/  jump_whitelist; } ;
struct TYPE_6__ {int /*<<< orphan*/  mapping; } ;
struct drm_i915_gem_object {TYPE_3__ mm; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int fixed; int mask; } ;
struct drm_i915_cmd_descriptor {int flags; TYPE_2__ cmd; TYPE_1__ length; } ;

/* Variables and functions */
 int CMD_DESC_FIXED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EACCES ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int*) ; 
 int LENGTH_BIAS ; 
 int MI_BATCH_BUFFER_END ; 
 scalar_t__ MI_BATCH_BUFFER_START ; 
 int FUNC2 (int*) ; 
 int FUNC3 (struct i915_gem_context*,int*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*,struct drm_i915_cmd_descriptor const*,int*,int) ; 
 int* FUNC5 (struct drm_i915_gem_object*,struct drm_i915_gem_object*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 struct drm_i915_cmd_descriptor* FUNC7 (struct intel_engine_cs*,int,struct drm_i915_cmd_descriptor const*,struct drm_i915_cmd_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_gem_context*,int) ; 
 struct drm_i915_cmd_descriptor noop_desc ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

int FUNC12(struct i915_gem_context *ctx,
			    struct intel_engine_cs *engine,
			    struct drm_i915_gem_object *batch_obj,
			    u64 batch_start,
			    u32 batch_start_offset,
			    u32 batch_len,
			    struct drm_i915_gem_object *shadow_batch_obj,
			    u64 shadow_batch_start)
{
	u32 *cmd, *batch_end, offset = 0;
	struct drm_i915_cmd_descriptor default_desc = noop_desc;
	const struct drm_i915_cmd_descriptor *desc = &default_desc;
	bool needs_clflush_after = false;
	int ret = 0;

	cmd = FUNC5(shadow_batch_obj, batch_obj,
			 batch_start_offset, batch_len,
			 &needs_clflush_after);
	if (FUNC1(cmd)) {
		FUNC0("CMD: Failed to copy batch\n");
		return FUNC2(cmd);
	}

	FUNC9(ctx, batch_len);

	/*
	 * We use the batch length as size because the shadow object is as
	 * large or larger and copy_batch() will write MI_NOPs to the extra
	 * space. Parsing should be faster in some cases this way.
	 */
	batch_end = cmd + (batch_len / sizeof(*batch_end));
	do {
		u32 length;

		if (*cmd == MI_BATCH_BUFFER_END)
			break;

		desc = FUNC7(engine, *cmd, desc, &default_desc);
		if (!desc) {
			FUNC0("CMD: Unrecognized command: 0x%08X\n",
					 *cmd);
			ret = -EINVAL;
			goto err;
		}

		if (desc->flags & CMD_DESC_FIXED)
			length = desc->length.fixed;
		else
			length = ((*cmd & desc->length.mask) + LENGTH_BIAS);

		if ((batch_end - cmd) < length) {
			FUNC0("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
					 *cmd,
					 length,
					 batch_end - cmd);
			ret = -EINVAL;
			goto err;
		}

		if (!FUNC4(engine, desc, cmd, length)) {
			ret = -EACCES;
			goto err;
		}

		if (desc->cmd.value == MI_BATCH_BUFFER_START) {
			ret = FUNC3(ctx, cmd, offset, length,
					    batch_len, batch_start,
					    shadow_batch_start);

			if (ret)
				goto err;
			break;
		}

		if (ctx->jump_whitelist_cmds > offset)
			FUNC11(offset, ctx->jump_whitelist);

		cmd += length;
		offset += length;
		if  (cmd >= batch_end) {
			FUNC0("CMD: Got to the end of the buffer w/o a BBE cmd!\n");
			ret = -EINVAL;
			goto err;
		}
	} while (1);

	if (needs_clflush_after) {
		void *ptr = FUNC10(shadow_batch_obj->mm.mapping);

		FUNC6(ptr, (void *)(cmd + 1) - ptr);
	}

err:
	FUNC8(shadow_batch_obj);
	return ret;
}