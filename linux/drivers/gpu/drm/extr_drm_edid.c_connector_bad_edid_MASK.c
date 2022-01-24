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
typedef  int /*<<< orphan*/  u8 ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_1__* dev; int /*<<< orphan*/  bad_edid_counter; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_UT_KMS ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int EDID_LENGTH ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector,
			       u8 *edid, int num_blocks)
{
	int i;

	if (connector->bad_edid_counter++ && !(drm_debug & DRM_UT_KMS))
		return;

	FUNC0(connector->dev->dev,
		 "%s: EDID is invalid:\n",
		 connector->name);
	for (i = 0; i < num_blocks; i++) {
		u8 *block = edid + i * EDID_LENGTH;
		char prefix[20];

		if (FUNC2(block, EDID_LENGTH))
			FUNC4(prefix, "\t[%02x] ZERO ", i);
		else if (!FUNC1(block, i, false, NULL))
			FUNC4(prefix, "\t[%02x] BAD  ", i);
		else
			FUNC4(prefix, "\t[%02x] GOOD ", i);

		FUNC3(KERN_WARNING,
			       prefix, DUMP_PREFIX_NONE, 16, 1,
			       block, EDID_LENGTH, false);
	}
}