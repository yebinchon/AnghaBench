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
struct mtk_hdmi {int /*<<< orphan*/  dev; } ;
struct hdmi_spd_infoframe {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct hdmi_spd_infoframe*,char const*,char const*) ; 
 scalar_t__ FUNC2 (struct hdmi_spd_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_hdmi*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mtk_hdmi *hdmi,
					const char *vendor,
					const char *product)
{
	struct hdmi_spd_infoframe frame;
	u8 buffer[29];
	ssize_t err;

	err = FUNC1(&frame, vendor, product);
	if (err < 0) {
		FUNC0(hdmi->dev, "Failed to initialize SPD infoframe: %zd\n",
			err);
		return err;
	}

	err = FUNC2(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC0(hdmi->dev, "Failed to pack SDP infoframe: %zd\n", err);
		return err;
	}

	FUNC3(hdmi, buffer, sizeof(buffer));
	return 0;
}