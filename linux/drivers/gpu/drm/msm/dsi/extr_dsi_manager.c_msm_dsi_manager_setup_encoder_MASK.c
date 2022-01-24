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
struct msm_kms {TYPE_2__* funcs; } ;
struct msm_dsi {TYPE_1__* dev; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_encoder_mode ) (struct msm_kms*,struct drm_encoder*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 struct msm_dsi* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_dsi*) ; 
 struct drm_encoder* FUNC2 (struct msm_dsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_kms*,struct drm_encoder*,int /*<<< orphan*/ ) ; 

void FUNC4(int id)
{
	struct msm_dsi *msm_dsi = FUNC0(id);
	struct msm_drm_private *priv = msm_dsi->dev->dev_private;
	struct msm_kms *kms = priv->kms;
	struct drm_encoder *encoder = FUNC2(msm_dsi);

	if (encoder && kms->funcs->set_encoder_mode)
		kms->funcs->set_encoder_mode(kms, encoder,
					     FUNC1(msm_dsi));
}