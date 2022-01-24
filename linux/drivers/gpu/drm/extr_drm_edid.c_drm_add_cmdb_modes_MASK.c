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
typedef  int /*<<< orphan*/  u8 ;
struct drm_hdmi_info {int /*<<< orphan*/  y420_cmdb_modes; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {TYPE_1__ display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct drm_connector *connector, u8 svd)
{
	u8 vic = FUNC2(svd);
	struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

	if (!FUNC1(vic))
		return;

	FUNC0(hdmi->y420_cmdb_modes, vic, 1);
}