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
typedef  int u8 ;
struct drm_hdmi_info {unsigned long long y420_cmdb_map; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_hdmi_info hdmi; } ;
struct drm_connector {TYPE_1__ display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int const) ; 
 struct drm_display_mode* FUNC1 (struct drm_connector*,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 

__attribute__((used)) static int
FUNC3(struct drm_connector *connector, const u8 *db, u8 len)
{
	int i, modes = 0;
	struct drm_hdmi_info *hdmi = &connector->display_info.hdmi;

	for (i = 0; i < len; i++) {
		struct drm_display_mode *mode;
		mode = FUNC1(connector, db, len, i);
		if (mode) {
			/*
			 * YCBCR420 capability block contains a bitmap which
			 * gives the index of CEA modes from CEA VDB, which
			 * can support YCBCR 420 sampling output also (apart
			 * from RGB/YCBCR444 etc).
			 * For example, if the bit 0 in bitmap is set,
			 * first mode in VDB can support YCBCR420 output too.
			 * Add YCBCR420 modes only if sink is HDMI 2.0 capable.
			 */
			if (i < 64 && hdmi->y420_cmdb_map & (1ULL << i))
				FUNC0(connector, db[i]);

			FUNC2(connector, mode);
			modes++;
		}
	}

	return modes;
}