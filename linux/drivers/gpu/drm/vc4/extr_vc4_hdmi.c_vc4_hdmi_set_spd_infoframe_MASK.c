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
struct TYPE_2__ {int /*<<< orphan*/  sdi; } ;
union hdmi_infoframe {TYPE_1__ spd; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HDMI_SPD_SDI_PC ; 
 int FUNC1 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*,union hdmi_infoframe*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	union hdmi_infoframe frame;
	int ret;

	ret = FUNC1(&frame.spd, "Broadcom", "Videocore");
	if (ret < 0) {
		FUNC0("couldn't fill SPD infoframe\n");
		return;
	}

	frame.spd.sdi = HDMI_SPD_SDI_PC;

	FUNC2(encoder, &frame);
}