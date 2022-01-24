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
struct zx_vga_pwrctrl {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  regmap; } ;
struct zx_vga {struct zx_vga_pwrctrl pwrctrl; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOU_VGA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zx_vga* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct zx_vga *vga = FUNC1(encoder);
	struct zx_vga_pwrctrl *pwrctrl = &vga->pwrctrl;

	/* Set bit to power up VGA DACs */
	FUNC0(pwrctrl->regmap, pwrctrl->reg, pwrctrl->mask,
			   pwrctrl->mask);

	FUNC2(VOU_VGA, encoder->crtc);
}