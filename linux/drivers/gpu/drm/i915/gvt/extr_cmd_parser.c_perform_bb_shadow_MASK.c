#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct parser_exec_state {scalar_t__ buf_addr_type; scalar_t__ buf_type; unsigned long ip_gma; TYPE_5__* ip_va; TYPE_5__* rb_va; int /*<<< orphan*/  is_ctx_wa; TYPE_4__* workload; struct intel_vgpu* vgpu; } ;
struct intel_vgpu_shadow_bb {int ppgtt; int clflush; int accessing; TYPE_5__* obj; TYPE_5__* va; TYPE_5__* bb_offset; TYPE_5__* bb_start_cmd_va; int /*<<< orphan*/  list; } ;
struct intel_vgpu_mm {int dummy; } ;
struct TYPE_17__ {struct intel_vgpu_mm* ggtt_mm; } ;
struct intel_vgpu {TYPE_2__* gvt; TYPE_1__ gtt; } ;
struct TYPE_19__ {int /*<<< orphan*/  size; } ;
struct TYPE_21__ {TYPE_3__ base; } ;
struct TYPE_20__ {int /*<<< orphan*/  shadow_bb; struct intel_vgpu_mm* shadow_mm; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 scalar_t__ BATCH_BUFFER_INSTRUCTION ; 
 int CLFLUSH_BEFORE ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GTT_BUFFER ; 
 unsigned long I915_GTT_PAGE_MASK ; 
 int /*<<< orphan*/  I915_MAP_WB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long INTEL_GVT_INVALID_ADDR ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (TYPE_5__*) ; 
 int FUNC3 (struct parser_exec_state*,TYPE_5__*) ; 
 int FUNC4 (struct intel_vgpu*,struct intel_vgpu_mm*,unsigned long,unsigned long,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct parser_exec_state*,unsigned long*,unsigned long*) ; 
 unsigned long FUNC7 (struct parser_exec_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_5__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 TYPE_5__* FUNC11 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_vgpu_shadow_bb*) ; 
 struct intel_vgpu_shadow_bb* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct parser_exec_state *s)
{
	struct intel_vgpu *vgpu = s->vgpu;
	struct intel_vgpu_shadow_bb *bb;
	unsigned long gma = 0;
	unsigned long bb_size;
	unsigned long bb_end_cmd_offset;
	int ret = 0;
	struct intel_vgpu_mm *mm = (s->buf_addr_type == GTT_BUFFER) ?
		s->vgpu->gtt.ggtt_mm : s->workload->shadow_mm;
	unsigned long start_offset = 0;

	/* get the start gm address of the batch buffer */
	gma = FUNC7(s, 1);
	if (gma == INTEL_GVT_INVALID_ADDR)
		return -EFAULT;

	ret = FUNC6(s, &bb_size, &bb_end_cmd_offset);
	if (ret)
		return ret;

	bb = FUNC16(sizeof(*bb), GFP_KERNEL);
	if (!bb)
		return -ENOMEM;

	bb->ppgtt = (s->buf_addr_type == GTT_BUFFER) ? false : true;

	/* the start_offset stores the batch buffer's start gma's
	 * offset relative to page boundary. so for non-privileged batch
	 * buffer, the shadowed gem object holds exactly the same page
	 * layout as original gem object. This is for the convience of
	 * replacing the whole non-privilged batch buffer page to this
	 * shadowed one in PPGTT at the same gma address. (this replacing
	 * action is not implemented yet now, but may be necessary in
	 * future).
	 * for prileged batch buffer, we just change start gma address to
	 * that of shadowed page.
	 */
	if (bb->ppgtt)
		start_offset = gma & ~I915_GTT_PAGE_MASK;

	bb->obj = FUNC9(s->vgpu->gvt->dev_priv,
					       FUNC18(bb_size + start_offset,
							PAGE_SIZE));
	if (FUNC1(bb->obj)) {
		ret = FUNC2(bb->obj);
		goto err_free_bb;
	}

	ret = FUNC12(bb->obj, &bb->clflush);
	if (ret)
		goto err_free_obj;

	bb->va = FUNC11(bb->obj, I915_MAP_WB);
	if (FUNC1(bb->va)) {
		ret = FUNC2(bb->va);
		goto err_finish_shmem_access;
	}

	if (bb->clflush & CLFLUSH_BEFORE) {
		FUNC5(bb->va, bb->obj->base.size);
		bb->clflush &= ~CLFLUSH_BEFORE;
	}

	ret = FUNC4(s->vgpu, mm,
			      gma, gma + bb_size,
			      bb->va + start_offset);
	if (ret < 0) {
		FUNC8("fail to copy guest ring buffer\n");
		ret = -EFAULT;
		goto err_unmap;
	}

	ret = FUNC3(s, bb->va + start_offset + bb_end_cmd_offset);
	if (ret)
		goto err_unmap;

	FUNC0(&bb->list);
	FUNC17(&bb->list, &s->workload->shadow_bb);

	bb->accessing = true;
	bb->bb_start_cmd_va = s->ip_va;

	if ((s->buf_type == BATCH_BUFFER_INSTRUCTION) && (!s->is_ctx_wa))
		bb->bb_offset = s->ip_va - s->rb_va;
	else
		bb->bb_offset = 0;

	/*
	 * ip_va saves the virtual address of the shadow batch buffer, while
	 * ip_gma saves the graphics address of the original batch buffer.
	 * As the shadow batch buffer is just a copy from the originial one,
	 * it should be right to use shadow batch buffer'va and original batch
	 * buffer's gma in pair. After all, we don't want to pin the shadow
	 * buffer here (too early).
	 */
	s->ip_va = bb->va + start_offset;
	s->ip_gma = gma;
	return 0;
err_unmap:
	FUNC14(bb->obj);
err_finish_shmem_access:
	FUNC10(bb->obj);
err_free_obj:
	FUNC13(bb->obj);
err_free_bb:
	FUNC15(bb);
	return ret;
}