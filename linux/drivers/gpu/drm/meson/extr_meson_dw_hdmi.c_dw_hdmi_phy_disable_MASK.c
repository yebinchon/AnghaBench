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
struct dw_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HHI_HDMI_PHY_CNTL0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dw_hdmi *hdmi,
				void *data)
{
	struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;
	struct meson_drm *priv = dw_hdmi->priv;

	FUNC0("\n");

	FUNC1(priv->hhi, HHI_HDMI_PHY_CNTL0, 0);
}