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
struct tfp410 {int /*<<< orphan*/  ddc; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int FUNC2 (struct drm_connector*,int,int) ; 
 struct tfp410* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC5 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct edid*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct tfp410 *dvi = FUNC3(connector);
	struct edid *edid;
	int ret;

	if (!dvi->ddc)
		goto fallback;

	edid = FUNC5(connector, dvi->ddc);
	if (!edid) {
		FUNC0("EDID read failed. Fallback to standard modes\n");
		goto fallback;
	}

	FUNC4(connector, edid);

	ret = FUNC1(connector, edid);

	FUNC7(edid);

	return ret;

fallback:
	/* No EDID, fallback on the XGA standard modes */
	ret = FUNC2(connector, 1920, 1200);

	/* And prefer a mode pretty much anything can handle */
	FUNC6(connector, 1024, 768);

	return ret;
}