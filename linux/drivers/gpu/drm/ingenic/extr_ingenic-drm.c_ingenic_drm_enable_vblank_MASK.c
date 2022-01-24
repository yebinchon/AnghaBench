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
struct ingenic_drm {int /*<<< orphan*/  map; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JZ_LCD_CTRL_EOF_IRQ ; 
 int /*<<< orphan*/  JZ_REG_LCD_CTRL ; 
 struct ingenic_drm* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_crtc *crtc)
{
	struct ingenic_drm *priv = FUNC0(crtc);

	FUNC1(priv->map, JZ_REG_LCD_CTRL,
			   JZ_LCD_CTRL_EOF_IRQ, JZ_LCD_CTRL_EOF_IRQ);

	return 0;
}