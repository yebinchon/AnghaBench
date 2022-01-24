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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct radeon_device {int flags; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_EXT_TMDS_INFO_TABLE ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D ; 
 int /*<<< orphan*/  CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I ; 
 int RADEON_IS_IGP ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC2(struct drm_device *dev, int is_dvi_d)
{
	struct radeon_device *rdev = dev->dev_private;
	uint32_t ext_tmds_info;

	if (rdev->flags & RADEON_IS_IGP) {
		if (is_dvi_d)
			return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D;
		else
			return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
	}
	ext_tmds_info = FUNC1(dev, COMBIOS_EXT_TMDS_INFO_TABLE);
	if (ext_tmds_info) {
		uint8_t rev = FUNC0(ext_tmds_info);
		uint8_t flags = FUNC0(ext_tmds_info + 4 + 5);
		if (rev >= 3) {
			if (is_dvi_d)
				return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D;
			else
				return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I;
		} else {
			if (flags & 1) {
				if (is_dvi_d)
					return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D;
				else
					return CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I;
			}
		}
	}
	if (is_dvi_d)
		return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D;
	else
		return CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I;
}