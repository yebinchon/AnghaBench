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
typedef  int /*<<< orphan*/  u8 ;
struct tegra_hdmi {int /*<<< orphan*/  dev; } ;
struct hdmi_vendor_infoframe {int /*<<< orphan*/  s3d_struct; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_3D_STRUCTURE_FRAME_PACKING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_vendor_infoframe*) ; 
 scalar_t__ FUNC2 (struct hdmi_vendor_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_hdmi*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct tegra_hdmi *hdmi)
{
	struct hdmi_vendor_infoframe frame;
	u8 buffer[10];
	ssize_t err;

	FUNC1(&frame);
	frame.s3d_struct = HDMI_3D_STRUCTURE_FRAME_PACKING;

	err = FUNC2(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC0(hdmi->dev, "failed to pack vendor infoframe: %zd\n",
			err);
		return;
	}

	FUNC3(hdmi, buffer, err);
}