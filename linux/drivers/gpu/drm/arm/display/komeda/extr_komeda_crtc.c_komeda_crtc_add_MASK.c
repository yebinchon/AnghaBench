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
struct komeda_kms_dev {int /*<<< orphan*/  base; } ;
struct drm_crtc {int /*<<< orphan*/  port; } ;
struct komeda_crtc {TYPE_1__* master; struct drm_crtc base; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_output_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct komeda_kms_dev*,struct komeda_crtc*) ; 
 int /*<<< orphan*/  komeda_crtc_funcs ; 
 int /*<<< orphan*/  komeda_crtc_helper_funcs ; 

__attribute__((used)) static int FUNC4(struct komeda_kms_dev *kms,
			   struct komeda_crtc *kcrtc)
{
	struct drm_crtc *crtc = &kcrtc->base;
	int err;

	err = FUNC1(&kms->base, crtc,
					FUNC3(kms, kcrtc), NULL,
					&komeda_crtc_funcs, NULL);
	if (err)
		return err;

	FUNC0(crtc, &komeda_crtc_helper_funcs);
	FUNC2(crtc);

	crtc->port = kcrtc->master->of_output_port;

	return err;
}