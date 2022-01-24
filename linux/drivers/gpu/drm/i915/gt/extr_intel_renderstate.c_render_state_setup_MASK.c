#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct intel_renderstate_rodata {unsigned int batch_items; int* batch; unsigned int* reloc; } ;
struct intel_renderstate {int batch_size; unsigned int aux_offset; unsigned int aux_size; int /*<<< orphan*/  obj; scalar_t__ batch_offset; TYPE_2__* vma; struct intel_renderstate_rodata* rodata; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct TYPE_4__ {TYPE_1__ node; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int CACHELINE_DWORDS ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int EINVAL ; 
 int GEN9_MEDIA_POOL_ENABLE ; 
 int GEN9_MEDIA_POOL_STATE ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int MI_BATCH_BUFFER_END ; 
 int MI_NOOP ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct intel_renderstate *so,
			      struct drm_i915_private *i915)
{
	const struct intel_renderstate_rodata *rodata = so->rodata;
	unsigned int i = 0, reloc_index = 0;
	unsigned int needs_clflush;
	u32 *d;
	int ret;

	ret = FUNC8(so->obj, &needs_clflush);
	if (ret)
		return ret;

	d = FUNC10(FUNC7(so->obj, 0));

	while (i < rodata->batch_items) {
		u32 s = rodata->batch[i];

		if (i * 4  == rodata->reloc[reloc_index]) {
			u64 r = s + so->vma->node.start;
			s = FUNC12(r);
			if (FUNC2(i915)) {
				if (i + 1 >= rodata->batch_items ||
				    rodata->batch[i + 1] != 0)
					goto err;

				d[i++] = s;
				s = FUNC13(r);
			}

			reloc_index++;
		}

		d[i++] = s;
	}

	if (rodata->reloc[reloc_index] != -1) {
		FUNC1("only %d relocs resolved\n", reloc_index);
		goto err;
	}

	so->batch_offset = FUNC9(so->vma);
	so->batch_size = rodata->batch_items * sizeof(u32);

	while (i % CACHELINE_DWORDS)
		FUNC4(d, i, MI_NOOP);

	so->aux_offset = i * sizeof(u32);

	if (FUNC3(i915)) {
		/*
		 * We always program 3x6 pool config but depending upon which
		 * subslice is disabled HW drops down to appropriate config
		 * shown below.
		 *
		 * In the below table 2x6 config always refers to
		 * fused-down version, native 2x6 is not available and can
		 * be ignored
		 *
		 * SNo  subslices config                eu pool configuration
		 * -----------------------------------------------------------
		 * 1    3 subslices enabled (3x6)  -    0x00777000  (9+9)
		 * 2    ss0 disabled (2x6)         -    0x00777000  (3+9)
		 * 3    ss1 disabled (2x6)         -    0x00770000  (6+6)
		 * 4    ss2 disabled (2x6)         -    0x00007000  (9+3)
		 */
		u32 eu_pool_config = 0x00777000;

		FUNC4(d, i, GEN9_MEDIA_POOL_STATE);
		FUNC4(d, i, GEN9_MEDIA_POOL_ENABLE);
		FUNC4(d, i, eu_pool_config);
		FUNC4(d, i, 0);
		FUNC4(d, i, 0);
		FUNC4(d, i, 0);
	}

	FUNC4(d, i, MI_BATCH_BUFFER_END);
	so->aux_size = i * sizeof(u32) - so->aux_offset;
	so->aux_offset += so->batch_offset;
	/*
	 * Since we are sending length, we need to strictly conform to
	 * all requirements. For Gen2 this must be a multiple of 8.
	 */
	so->aux_size = FUNC0(so->aux_size, 8);

	if (needs_clflush)
		FUNC5(d, i * sizeof(u32));
	FUNC11(d);

	ret = 0;
out:
	FUNC6(so->obj);
	return ret;

err:
	FUNC11(d);
	ret = -EINVAL;
	goto out;
}