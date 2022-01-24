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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  HDMI_30BIT_DEEP_COLOR ; 
 int /*<<< orphan*/  HDMI_36BIT_DEEP_COLOR ; 
 scalar_t__ HDMI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_DEEP_COLOR_DEPTH_MASK ; 
 int /*<<< orphan*/  HDMI_DEEP_COLOR_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct drm_connector* FUNC4 (struct drm_encoder*) ; 

void FUNC5(struct drm_encoder *encoder, u32 offset, int bpc)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct drm_connector *connector = FUNC4(encoder);
	uint32_t val;

	val = FUNC2(HDMI_CONTROL + offset);
	val &= ~HDMI_DEEP_COLOR_ENABLE;
	val &= ~HDMI_DEEP_COLOR_DEPTH_MASK;

	switch (bpc) {
		case 0:
		case 6:
		case 8:
		case 16:
		default:
			FUNC0("%s: Disabling hdmi deep color for %d bpc.\n",
					 connector->name, bpc);
			break;
		case 10:
			val |= HDMI_DEEP_COLOR_ENABLE;
			val |= FUNC1(HDMI_30BIT_DEEP_COLOR);
			FUNC0("%s: Enabling hdmi deep color 30 for 10 bpc.\n",
					 connector->name);
			break;
		case 12:
			val |= HDMI_DEEP_COLOR_ENABLE;
			val |= FUNC1(HDMI_36BIT_DEEP_COLOR);
			FUNC0("%s: Enabling hdmi deep color 36 for 12 bpc.\n",
					 connector->name);
			break;
	}

	FUNC3(HDMI_CONTROL + offset, val);
}