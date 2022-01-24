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
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int JZ_LCD_CTRL_DISABLE ; 
 int JZ_LCD_CTRL_ENABLE ; 
 int /*<<< orphan*/  JZ_REG_LCD_CTRL ; 
 int /*<<< orphan*/  JZ_REG_LCD_STATE ; 
 struct ingenic_drm* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc,
					   struct drm_crtc_state *state)
{
	struct ingenic_drm *priv = FUNC0(crtc);

	FUNC3(priv->map, JZ_REG_LCD_STATE, 0);

	FUNC2(priv->map, JZ_REG_LCD_CTRL,
			   JZ_LCD_CTRL_ENABLE | JZ_LCD_CTRL_DISABLE,
			   JZ_LCD_CTRL_ENABLE);

	FUNC1(crtc);
}