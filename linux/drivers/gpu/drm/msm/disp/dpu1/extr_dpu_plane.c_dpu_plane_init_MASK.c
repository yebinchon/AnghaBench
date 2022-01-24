#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u32 ;
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct TYPE_15__ {int id; } ;
struct drm_plane {TYPE_5__ base; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_plane {int pipe; int is_virtual; TYPE_6__* pipe_hw; int /*<<< orphan*/  pipe_name; int /*<<< orphan*/  lock; TYPE_7__* catalog; TYPE_2__* pipe_sblk; int /*<<< orphan*/  features; int /*<<< orphan*/  mplane_list; struct drm_plane base; } ;
struct dpu_kms {TYPE_7__* catalog; int /*<<< orphan*/  mmio; } ;
typedef  enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;
struct TYPE_17__ {TYPE_4__* mixer; scalar_t__ mixer_count; } ;
struct TYPE_16__ {TYPE_1__* cap; } ;
struct TYPE_14__ {TYPE_3__* sblk; } ;
struct TYPE_13__ {int maxblendstages; } ;
struct TYPE_12__ {int* virt_format_list; int virt_num_formats; int* format_list; int num_formats; } ;
struct TYPE_11__ {TYPE_2__* sblk; int /*<<< orphan*/  features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  DPU_NAME_SIZE ; 
 int DPU_STAGE_0 ; 
 int DPU_STAGE_MAX ; 
 int DPU_ZPOS_MAX ; 
 int DRM_MODE_REFLECT_X ; 
 int DRM_MODE_REFLECT_Y ; 
 int DRM_MODE_ROTATE_0 ; 
 int DRM_MODE_ROTATE_180 ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct drm_plane* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 TYPE_6__* FUNC7 (int,int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  dpu_plane_funcs ; 
 int /*<<< orphan*/  dpu_plane_helper_funcs ; 
 int /*<<< orphan*/  FUNC8 (struct drm_plane*,int,int) ; 
 int FUNC9 (struct drm_plane*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_plane*) ; 
 struct drm_plane* FUNC11 (struct drm_device*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct drm_device*,struct drm_plane*,int,int /*<<< orphan*/ *,int const*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct dpu_plane*) ; 
 struct dpu_plane* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  supported_format_modifiers ; 
 struct dpu_kms* FUNC19 (int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC20 (struct drm_plane*) ; 

struct drm_plane *FUNC21(struct drm_device *dev,
		uint32_t pipe, enum drm_plane_type type,
		unsigned long possible_crtcs, u32 master_plane_id)
{
	struct drm_plane *plane = NULL, *master_plane = NULL;
	const uint32_t *format_list;
	struct dpu_plane *pdpu;
	struct msm_drm_private *priv = dev->dev_private;
	struct dpu_kms *kms = FUNC19(priv->kms);
	int zpos_max = DPU_ZPOS_MAX;
	uint32_t num_formats;
	int ret = -EINVAL;

	/* create and zero local structure */
	pdpu = FUNC15(sizeof(*pdpu), GFP_KERNEL);
	if (!pdpu) {
		FUNC1("[%u]failed to allocate local plane struct\n", pipe);
		ret = -ENOMEM;
		return FUNC2(ret);
	}

	/* cache local stuff for later */
	plane = &pdpu->base;
	pdpu->pipe = pipe;
	pdpu->is_virtual = (master_plane_id != 0);
	FUNC3(&pdpu->mplane_list);
	master_plane = FUNC11(dev, NULL, master_plane_id);
	if (master_plane) {
		struct dpu_plane *mpdpu = FUNC20(master_plane);

		FUNC16(&pdpu->mplane_list, &mpdpu->mplane_list);
	}

	/* initialize underlying h/w driver */
	pdpu->pipe_hw = FUNC7(pipe, kms->mmio, kms->catalog,
							master_plane_id != 0);
	if (FUNC4(pdpu->pipe_hw)) {
		FUNC1("[%u]SSPP init failed\n", pipe);
		ret = FUNC5(pdpu->pipe_hw);
		goto clean_plane;
	} else if (!pdpu->pipe_hw->cap || !pdpu->pipe_hw->cap->sblk) {
		FUNC1("[%u]SSPP init returned invalid cfg\n", pipe);
		goto clean_sspp;
	}

	/* cache features mask for later */
	pdpu->features = pdpu->pipe_hw->cap->features;
	pdpu->pipe_sblk = pdpu->pipe_hw->cap->sblk;
	if (!pdpu->pipe_sblk) {
		FUNC1("[%u]invalid sblk\n", pipe);
		goto clean_sspp;
	}

	if (pdpu->is_virtual) {
		format_list = pdpu->pipe_sblk->virt_format_list;
		num_formats = pdpu->pipe_sblk->virt_num_formats;
	}
	else {
		format_list = pdpu->pipe_sblk->format_list;
		num_formats = pdpu->pipe_sblk->num_formats;
	}

	ret = FUNC13(dev, plane, 0xff, &dpu_plane_funcs,
				format_list, num_formats,
				supported_format_modifiers, type, NULL);
	if (ret)
		goto clean_sspp;

	pdpu->catalog = kms->catalog;

	if (kms->catalog->mixer_count &&
		kms->catalog->mixer[0].sblk->maxblendstages) {
		zpos_max = kms->catalog->mixer[0].sblk->maxblendstages - 1;
		if (zpos_max > DPU_STAGE_MAX - DPU_STAGE_0 - 1)
			zpos_max = DPU_STAGE_MAX - DPU_STAGE_0 - 1;
	}

	ret = FUNC9(plane, 0, 0, zpos_max);
	if (ret)
		FUNC1("failed to install zpos property, rc = %d\n", ret);

	FUNC8(plane,
			DRM_MODE_ROTATE_0,
			DRM_MODE_ROTATE_0 |
			DRM_MODE_ROTATE_180 |
			DRM_MODE_REFLECT_X |
			DRM_MODE_REFLECT_Y);

	FUNC10(plane);

	/* success! finalize initialization */
	FUNC12(plane, &dpu_plane_helper_funcs);

	/* save user friendly pipe name for later */
	FUNC18(pdpu->pipe_name, DPU_NAME_SIZE, "plane%u", plane->base.id);

	FUNC17(&pdpu->lock);

	FUNC0("%s created for pipe:%u id:%u virtual:%u\n", pdpu->pipe_name,
					pipe, plane->base.id, master_plane_id);
	return plane;

clean_sspp:
	if (pdpu && pdpu->pipe_hw)
		FUNC6(pdpu->pipe_hw);
clean_plane:
	FUNC14(pdpu);
	return FUNC2(ret);
}