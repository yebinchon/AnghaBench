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
struct tfp410_connector {TYPE_1__* mod; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int FUNC0 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC2 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct tfp410_connector* FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct tfp410_connector *tfp410_connector = FUNC4(connector);
	struct edid *edid;
	int ret = 0;

	edid = FUNC2(connector, tfp410_connector->mod->i2c);

	FUNC1(connector, edid);

	if (edid) {
		ret = FUNC0(connector, edid);
		FUNC3(edid);
	}

	return ret;
}