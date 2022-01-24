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
struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {int /*<<< orphan*/  hhi; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHI_HDMI_PHY_CNTL1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct meson_dw_hdmi *dw_hdmi)
{
	struct meson_drm *priv = dw_hdmi->priv;

	/* Enable and software reset */
	FUNC1(priv->hhi, HHI_HDMI_PHY_CNTL1, 0xf, 0xf);

	FUNC0(2);

	/* Enable and unreset */
	FUNC1(priv->hhi, HHI_HDMI_PHY_CNTL1, 0xf, 0xe);

	FUNC0(2);
}