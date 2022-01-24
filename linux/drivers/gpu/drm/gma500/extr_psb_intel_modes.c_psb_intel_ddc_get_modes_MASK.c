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
struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC2 (struct drm_connector*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 

int FUNC4(struct drm_connector *connector,
			    struct i2c_adapter *adapter)
{
	struct edid *edid;
	int ret = 0;

	edid = FUNC2(connector, adapter);
	if (edid) {
		FUNC1(connector, edid);
		ret = FUNC0(connector, edid);
		FUNC3(edid);
	}
	return ret;
}