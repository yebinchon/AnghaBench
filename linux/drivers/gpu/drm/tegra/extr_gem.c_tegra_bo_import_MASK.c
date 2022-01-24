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
struct tegra_drm {scalar_t__ domain; } ;
struct TYPE_2__ {struct tegra_bo* import_attach; } ;
struct tegra_bo {int nents; TYPE_1__ gem; struct tegra_bo* sgt; int /*<<< orphan*/  sgl; int /*<<< orphan*/  paddr; } ;
struct drm_device {int /*<<< orphan*/  dev; struct tegra_drm* dev_private; } ;
struct dma_buf_attachment {int nents; TYPE_1__ gem; struct dma_buf_attachment* sgt; int /*<<< orphan*/  sgl; int /*<<< orphan*/  paddr; } ;
struct dma_buf {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 struct tegra_bo* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_bo*) ; 
 int FUNC3 (struct tegra_bo*) ; 
 struct tegra_bo* FUNC4 (struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_buf*,struct tegra_bo*) ; 
 struct tegra_bo* FUNC6 (struct tegra_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_bo*,struct tegra_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_buf*) ; 
 int /*<<< orphan*/  FUNC11 (struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct tegra_bo* FUNC13 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct tegra_drm*,struct tegra_bo*) ; 

__attribute__((used)) static struct tegra_bo *FUNC15(struct drm_device *drm,
					struct dma_buf *buf)
{
	struct tegra_drm *tegra = drm->dev_private;
	struct dma_buf_attachment *attach;
	struct tegra_bo *bo;
	int err;

	bo = FUNC13(drm, buf->size);
	if (FUNC1(bo))
		return bo;

	attach = FUNC4(buf, drm->dev);
	if (FUNC1(attach)) {
		err = FUNC3(attach);
		goto free;
	}

	FUNC10(buf);

	bo->sgt = FUNC6(attach, DMA_TO_DEVICE);
	if (FUNC1(bo->sgt)) {
		err = FUNC3(bo->sgt);
		goto detach;
	}

	if (tegra->domain) {
		err = FUNC14(tegra, bo);
		if (err < 0)
			goto detach;
	} else {
		if (bo->sgt->nents > 1) {
			err = -EINVAL;
			goto detach;
		}

		bo->paddr = FUNC12(bo->sgt->sgl);
	}

	bo->gem.import_attach = attach;

	return bo;

detach:
	if (!FUNC2(bo->sgt))
		FUNC8(attach, bo->sgt, DMA_TO_DEVICE);

	FUNC5(buf, attach);
	FUNC7(buf);
free:
	FUNC9(&bo->gem);
	FUNC11(bo);
	return FUNC0(err);
}