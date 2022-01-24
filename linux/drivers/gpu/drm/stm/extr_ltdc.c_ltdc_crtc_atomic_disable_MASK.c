#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ltdc_device {int /*<<< orphan*/  regs; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GCR_LTDCEN ; 
 int IER_FUIE ; 
 int IER_RRIE ; 
 int IER_TERRIE ; 
 int /*<<< orphan*/  LTDC_GCR ; 
 int /*<<< orphan*/  LTDC_IER ; 
 int /*<<< orphan*/  LTDC_SRCR ; 
 int /*<<< orphan*/  SRCR_IMR ; 
 struct ltdc_device* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	struct ltdc_device *ldev = FUNC1(crtc);
	struct drm_device *ddev = crtc->dev;

	FUNC0("\n");

	FUNC2(crtc);

	/* disable LTDC */
	FUNC4(ldev->regs, LTDC_GCR, GCR_LTDCEN);

	/* disable IRQ */
	FUNC4(ldev->regs, LTDC_IER, IER_RRIE | IER_FUIE | IER_TERRIE);

	/* immediately commit disable of layers before switching off LTDC */
	FUNC5(ldev->regs, LTDC_SRCR, SRCR_IMR);

	FUNC3(ddev->dev);
}