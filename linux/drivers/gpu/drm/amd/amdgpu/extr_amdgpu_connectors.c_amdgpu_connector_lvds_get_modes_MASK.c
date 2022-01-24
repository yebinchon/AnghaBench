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
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  height_mm; int /*<<< orphan*/  width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*,struct drm_connector*) ; 
 struct drm_encoder* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 struct drm_display_mode* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,struct drm_display_mode*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct drm_encoder *encoder;
	int ret = 0;
	struct drm_display_mode *mode;

	FUNC4(connector);
	ret = FUNC2(connector);
	if (ret > 0) {
		encoder = FUNC1(connector);
		if (encoder) {
			FUNC3(encoder, connector);
			/* add scaled modes */
			FUNC0(encoder, connector);
		}
		return ret;
	}

	encoder = FUNC1(connector);
	if (!encoder)
		return 0;

	/* we have no EDID modes */
	mode = FUNC5(encoder);
	if (mode) {
		ret = 1;
		FUNC6(connector, mode);
		/* add the width/height from vbios tables if available */
		connector->display_info.width_mm = mode->width_mm;
		connector->display_info.height_mm = mode->height_mm;
		/* add scaled modes */
		FUNC0(encoder, connector);
	}

	return ret;
}