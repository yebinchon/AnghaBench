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
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IER_LIE ; 
 int /*<<< orphan*/  LTDC_IER ; 
 struct ltdc_device* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct ltdc_device *ldev = FUNC1(crtc);

	FUNC0("\n");
	FUNC2(ldev->regs, LTDC_IER, IER_LIE);
}