#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int possible_crtcs; } ;
struct TYPE_8__ {int /*<<< orphan*/  base; TYPE_2__ encoder; } ;
struct malidp_drm {TYPE_4__ mw_connector; int /*<<< orphan*/  crtc; TYPE_1__* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct TYPE_7__ {int /*<<< orphan*/  enable_memwrite; } ;
struct TYPE_5__ {TYPE_3__* hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct malidp_drm*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  malidp_mw_connector_funcs ; 
 int /*<<< orphan*/  malidp_mw_connector_helper_funcs ; 
 int /*<<< orphan*/  malidp_mw_encoder_helper_funcs ; 

int FUNC5(struct drm_device *drm)
{
	struct malidp_drm *malidp = drm->dev_private;
	u32 *formats;
	int ret, n_formats;

	if (!malidp->dev->hw->enable_memwrite)
		return 0;

	malidp->mw_connector.encoder.possible_crtcs = 1 << FUNC1(&malidp->crtc);
	FUNC0(&malidp->mw_connector.base,
				 &malidp_mw_connector_helper_funcs);

	formats = FUNC3(malidp, &n_formats);
	if (!formats)
		return -ENOMEM;

	ret = FUNC2(drm, &malidp->mw_connector,
					   &malidp_mw_connector_funcs,
					   &malidp_mw_encoder_helper_funcs,
					   formats, n_formats);
	FUNC4(formats);
	if (ret)
		return ret;

	return 0;
}