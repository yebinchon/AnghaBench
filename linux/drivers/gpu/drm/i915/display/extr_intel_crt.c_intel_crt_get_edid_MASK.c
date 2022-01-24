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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct edid* FUNC1 (struct drm_connector*,struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 

__attribute__((used)) static struct edid *FUNC4(struct drm_connector *connector,
				struct i2c_adapter *i2c)
{
	struct edid *edid;

	edid = FUNC1(connector, i2c);

	if (!edid && !FUNC3(i2c)) {
		FUNC0("CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
		FUNC2(i2c, true);
		edid = FUNC1(connector, i2c);
		FUNC2(i2c, false);
	}

	return edid;
}