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
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ddc; } ;
struct anx78xx {int /*<<< orphan*/  lock; scalar_t__ edid; TYPE_1__ aux; int /*<<< orphan*/  powered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct anx78xx*) ; 
 struct anx78xx* FUNC3 (struct drm_connector*) ; 
 int FUNC4 (struct drm_connector*,scalar_t__) ; 
 int FUNC5 (struct drm_connector*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct drm_connector *connector)
{
	struct anx78xx *anx78xx = FUNC3(connector);
	int err, num_modes = 0;

	if (FUNC1(!anx78xx->powered))
		return 0;

	if (anx78xx->edid)
		return FUNC4(connector, anx78xx->edid);

	FUNC7(&anx78xx->lock);

	err = FUNC2(anx78xx);
	if (err) {
		FUNC0("Failed to get downstream info: %d\n", err);
		goto unlock;
	}

	anx78xx->edid = FUNC6(connector, &anx78xx->aux.ddc);
	if (!anx78xx->edid) {
		FUNC0("Failed to read EDID\n");
		goto unlock;
	}

	err = FUNC5(connector,
						 anx78xx->edid);
	if (err) {
		FUNC0("Failed to update EDID property: %d\n", err);
		goto unlock;
	}

	num_modes = FUNC4(connector, anx78xx->edid);

unlock:
	FUNC8(&anx78xx->lock);

	return num_modes;
}