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
struct sun4i_tv {int /*<<< orphan*/  regs; } ;
struct sun4i_crtc {int /*<<< orphan*/  engine; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUN4I_TVE_EN_ENABLE ; 
 int /*<<< orphan*/  SUN4I_TVE_EN_REG ; 
 struct sun4i_crtc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_tv* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct sun4i_tv *tv = FUNC2(encoder);
	struct sun4i_crtc *crtc = FUNC1(encoder->crtc);

	FUNC0("Disabling the TV Output\n");

	FUNC3(tv->regs, SUN4I_TVE_EN_REG,
			   SUN4I_TVE_EN_ENABLE,
			   0);

	FUNC4(crtc->engine);
}