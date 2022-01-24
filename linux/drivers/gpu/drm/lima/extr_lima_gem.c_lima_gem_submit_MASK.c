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
struct ww_acquire_ctx {int dummy; } ;
struct lima_vm {int dummy; } ;
struct lima_submit {int nr_bos; int flags; int /*<<< orphan*/  task; TYPE_2__* bos; scalar_t__ pipe; TYPE_1__* ctx; scalar_t__ out_sync; struct lima_bo** lbos; } ;
struct lima_drm_priv {struct lima_vm* vm; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; } ;
struct lima_bo {struct drm_gem_object gem; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {scalar_t__ context; } ;

/* Variables and functions */
 int ENOENT ; 
 int LIMA_SUBMIT_BO_WRITE ; 
 int LIMA_SUBMIT_FLAG_EXPLICIT_FENCE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct drm_syncobj* FUNC5 (struct drm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_syncobj*,struct dma_fence*) ; 
 int FUNC8 (struct drm_file*,struct lima_submit*) ; 
 int FUNC9 (struct lima_bo**,int,struct ww_acquire_ctx*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct lima_bo*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct lima_bo**,int,struct ww_acquire_ctx*) ; 
 struct dma_fence* FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__,struct lima_bo**,int,struct lima_vm*) ; 
 int FUNC15 (struct lima_vm*,struct lima_bo*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct lima_vm*,struct lima_bo*) ; 
 struct lima_bo* FUNC17 (struct drm_gem_object*) ; 
 struct lima_drm_priv* FUNC18 (struct drm_file*) ; 

int FUNC19(struct drm_file *file, struct lima_submit *submit)
{
	int i, err = 0;
	struct ww_acquire_ctx ctx;
	struct lima_drm_priv *priv = FUNC18(file);
	struct lima_vm *vm = priv->vm;
	struct drm_syncobj *out_sync = NULL;
	struct dma_fence *fence;
	struct lima_bo **bos = submit->lbos;

	if (submit->out_sync) {
		out_sync = FUNC5(file, submit->out_sync);
		if (!out_sync)
			return -ENOENT;
	}

	for (i = 0; i < submit->nr_bos; i++) {
		struct drm_gem_object *obj;
		struct lima_bo *bo;

		obj = FUNC3(file, submit->bos[i].handle);
		if (!obj) {
			err = -ENOENT;
			goto err_out0;
		}

		bo = FUNC17(obj);

		/* increase refcnt of gpu va map to prevent unmapped when executing,
		 * will be decreased when task done
		 */
		err = FUNC15(vm, bo, false);
		if (err) {
			FUNC4(obj);
			goto err_out0;
		}

		bos[i] = bo;
	}

	err = FUNC9(bos, submit->nr_bos, &ctx);
	if (err)
		goto err_out0;

	err = FUNC14(
		submit->task, submit->ctx->context + submit->pipe,
		bos, submit->nr_bos, vm);
	if (err)
		goto err_out1;

	err = FUNC8(file, submit);
	if (err)
		goto err_out2;

	for (i = 0; i < submit->nr_bos; i++) {
		err = FUNC10(
			submit->task, bos[i],
			submit->bos[i].flags & LIMA_SUBMIT_BO_WRITE,
			submit->flags & LIMA_SUBMIT_FLAG_EXPLICIT_FENCE);
		if (err)
			goto err_out2;
	}

	fence = FUNC12(
		submit->ctx->context + submit->pipe, submit->task);

	for (i = 0; i < submit->nr_bos; i++) {
		if (submit->bos[i].flags & LIMA_SUBMIT_BO_WRITE)
			FUNC1(bos[i]->gem.resv, fence);
		else
			FUNC2(bos[i]->gem.resv, fence);
	}

	FUNC11(bos, submit->nr_bos, &ctx);

	for (i = 0; i < submit->nr_bos; i++)
		FUNC4(&bos[i]->gem);

	if (out_sync) {
		FUNC7(out_sync, fence);
		FUNC6(out_sync);
	}

	FUNC0(fence);

	return 0;

err_out2:
	FUNC13(submit->task);
err_out1:
	FUNC11(bos, submit->nr_bos, &ctx);
err_out0:
	for (i = 0; i < submit->nr_bos; i++) {
		if (!bos[i])
			break;
		FUNC16(vm, bos[i]);
		FUNC4(&bos[i]->gem);
	}
	if (out_sync)
		FUNC6(out_sync);
	return err;
}