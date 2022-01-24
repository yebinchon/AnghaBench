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
 struct edid* FUNC0 (struct drm_connector*,struct i2c_adapter*) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct edid*) ; 

int FUNC3(struct drm_connector *connector,
			struct i2c_adapter *adapter)
{
	struct edid *edid;
	int ret;

	edid = FUNC0(connector, adapter);
	if (!edid)
		return 0;

	ret = FUNC1(connector, edid);
	FUNC2(edid);

	return ret;
}