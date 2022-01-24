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
struct psmouse {int dummy; } ;
struct elantech_device_info {unsigned char fw_version; int hw_version; int* capabilities; int* samples; int has_trackpoint; int x_res; int y_res; int x_max; int y_max; unsigned char width; unsigned char x_traces; unsigned char y_traces; int has_middle_button; scalar_t__ (* send_cmd ) (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ;int /*<<< orphan*/  y_min; int /*<<< orphan*/  x_min; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ETP_CAPABILITIES_QUERY ; 
 int /*<<< orphan*/  ETP_FW_ID_QUERY ; 
 int /*<<< orphan*/  ETP_FW_VERSION_QUERY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ETP_SAMPLE_QUERY ; 
 int ETP_XMAX_V1 ; 
 int ETP_XMAX_V2 ; 
 int /*<<< orphan*/  ETP_XMIN_V1 ; 
 int /*<<< orphan*/  ETP_XMIN_V2 ; 
 int ETP_YMAX_V1 ; 
 int ETP_YMAX_V2 ; 
 int /*<<< orphan*/  ETP_YMIN_V1 ; 
 int /*<<< orphan*/  ETP_YMIN_V2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  elantech_dmi_has_middle_button ; 
 scalar_t__ FUNC2 (struct psmouse*,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct elantech_device_info*) ; 
 scalar_t__ FUNC4 (struct elantech_device_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct elantech_device_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,char*) ; 
 scalar_t__ FUNC9 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC11 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC12 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC13 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC14 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC15 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static int FUNC16(struct psmouse *psmouse,
			       struct elantech_device_info *info)
{
	unsigned char param[3];
	unsigned char traces;

	FUNC5(info, 0, sizeof(*info));

	/*
	 * Do the version query again so we can store the result
	 */
	if (FUNC15(psmouse, ETP_FW_VERSION_QUERY, param)) {
		FUNC6(psmouse, "failed to query firmware version.\n");
		return -EINVAL;
	}
	info->fw_version = (param[0] << 16) | (param[1] << 8) | param[2];

	if (FUNC4(info)) {
		FUNC6(psmouse, "unknown hardware version, aborting...\n");
		return -EINVAL;
	}
	FUNC7(psmouse,
		     "assuming hardware version %d (with firmware version 0x%02x%02x%02x)\n",
		     info->hw_version, param[0], param[1], param[2]);

	if (info->send_cmd(psmouse, ETP_CAPABILITIES_QUERY,
	    info->capabilities)) {
		FUNC6(psmouse, "failed to query capabilities.\n");
		return -EINVAL;
	}
	FUNC7(psmouse,
		     "Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\n",
		     info->capabilities[0], info->capabilities[1],
		     info->capabilities[2]);

	if (info->hw_version != 1) {
		if (info->send_cmd(psmouse, ETP_SAMPLE_QUERY, info->samples)) {
			FUNC6(psmouse, "failed to query sample data\n");
			return -EINVAL;
		}
		FUNC7(psmouse,
			     "Elan sample query result %02x, %02x, %02x\n",
			     info->samples[0],
			     info->samples[1],
			     info->samples[2]);
	}

	if (info->samples[1] == 0x74 && info->hw_version == 0x03) {
		/*
		 * This module has a bug which makes absolute mode
		 * unusable, so let's abort so we'll be using standard
		 * PS/2 protocol.
		 */
		FUNC7(psmouse,
			     "absolute mode broken, forcing standard PS/2 protocol\n");
		return -ENODEV;
	}

	/* The MSB indicates the presence of the trackpoint */
	info->has_trackpoint = (info->capabilities[0] & 0x80) == 0x80;

	info->x_res = 31;
	info->y_res = 31;
	if (info->hw_version == 4) {
		if (FUNC2(psmouse,
					       &info->x_res,
					       &info->y_res,
					       &info->bus)) {
			FUNC8(psmouse,
				     "failed to query resolution data.\n");
		}
	}

	/* query range information */
	switch (info->hw_version) {
	case 1:
		info->x_min = ETP_XMIN_V1;
		info->y_min = ETP_YMIN_V1;
		info->x_max = ETP_XMAX_V1;
		info->y_max = ETP_YMAX_V1;
		break;

	case 2:
		if (info->fw_version == 0x020800 ||
		    info->fw_version == 0x020b00 ||
		    info->fw_version == 0x020030) {
			info->x_min = ETP_XMIN_V2;
			info->y_min = ETP_YMIN_V2;
			info->x_max = ETP_XMAX_V2;
			info->y_max = ETP_YMAX_V2;
		} else {
			int i;
			int fixed_dpi;

			i = (info->fw_version > 0x020800 &&
			     info->fw_version < 0x020900) ? 1 : 2;

			if (info->send_cmd(psmouse, ETP_FW_ID_QUERY, param))
				return -EINVAL;

			fixed_dpi = param[1] & 0x10;

			if (((info->fw_version >> 16) == 0x14) && fixed_dpi) {
				if (info->send_cmd(psmouse, ETP_SAMPLE_QUERY, param))
					return -EINVAL;

				info->x_max = (info->capabilities[1] - i) * param[1] / 2;
				info->y_max = (info->capabilities[2] - i) * param[2] / 2;
			} else if (info->fw_version == 0x040216) {
				info->x_max = 819;
				info->y_max = 405;
			} else if (info->fw_version == 0x040219 || info->fw_version == 0x040215) {
				info->x_max = 900;
				info->y_max = 500;
			} else {
				info->x_max = (info->capabilities[1] - i) * 64;
				info->y_max = (info->capabilities[2] - i) * 64;
			}
		}
		break;

	case 3:
		if (info->send_cmd(psmouse, ETP_FW_ID_QUERY, param))
			return -EINVAL;

		info->x_max = (0x0f & param[0]) << 8 | param[1];
		info->y_max = (0xf0 & param[0]) << 4 | param[2];
		break;

	case 4:
		if (info->send_cmd(psmouse, ETP_FW_ID_QUERY, param))
			return -EINVAL;

		info->x_max = (0x0f & param[0]) << 8 | param[1];
		info->y_max = (0xf0 & param[0]) << 4 | param[2];
		traces = info->capabilities[1];
		if ((traces < 2) || (traces > info->x_max))
			return -EINVAL;

		info->width = info->x_max / (traces - 1);

		/* column number of traces */
		info->x_traces = traces;

		/* row number of traces */
		traces = info->capabilities[2];
		if ((traces >= 2) && (traces <= info->y_max))
			info->y_traces = traces;

		break;
	}

	/* check for the middle button: DMI matching or new v4 firmwares */
	info->has_middle_button = FUNC1(elantech_dmi_has_middle_button) ||
				  (FUNC0(info->fw_version) &&
				   !FUNC3(info));

	return 0;
}