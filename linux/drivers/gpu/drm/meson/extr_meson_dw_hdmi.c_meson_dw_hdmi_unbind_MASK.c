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
struct meson_dw_hdmi {int /*<<< orphan*/  hdmi; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct meson_dw_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct device *master,
				   void *data)
{
	struct meson_dw_hdmi *meson_dw_hdmi = FUNC0(dev);

	FUNC1(meson_dw_hdmi->hdmi);
}