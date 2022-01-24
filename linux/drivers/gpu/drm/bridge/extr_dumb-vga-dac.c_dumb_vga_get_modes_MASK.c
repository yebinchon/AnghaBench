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
struct edid {int dummy; } ;
struct dumb_vga {int /*<<< orphan*/  ddc; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int FUNC2 (struct drm_connector*,int,int) ; 
 struct dumb_vga* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC5 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct dumb_vga *vga = FUNC3(connector);
	struct edid *edid;
	int ret;

	if (!vga->ddc)
		goto fallback;

	edid = FUNC5(connector, vga->ddc);
	if (!edid) {
		FUNC0("EDID readout failed, falling back to standard modes\n");
		goto fallback;
	}

	FUNC4(connector, edid);
	ret = FUNC1(connector, edid);
	FUNC7(edid);
	return ret;

fallback:
	/*
	 * In case we cannot retrieve the EDIDs (broken or missing i2c
	 * bus), fallback on the XGA standards
	 */
	ret = FUNC2(connector, 1920, 1200);

	/* And prefer a mode pretty much anyone can handle */
	FUNC6(connector, 1024, 768);

	return ret;
}