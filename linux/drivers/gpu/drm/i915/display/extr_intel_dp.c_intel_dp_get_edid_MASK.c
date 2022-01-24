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
struct TYPE_2__ {int /*<<< orphan*/  ddc; } ;
struct intel_dp {TYPE_1__ aux; struct intel_connector* attached_connector; } ;
struct intel_connector {int /*<<< orphan*/  base; scalar_t__ edid; } ;
struct edid {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct edid* FUNC1 (scalar_t__) ; 
 struct edid* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct edid *
FUNC3(struct intel_dp *intel_dp)
{
	struct intel_connector *intel_connector = intel_dp->attached_connector;

	/* use cached edid if we have one */
	if (intel_connector->edid) {
		/* invalid edid */
		if (FUNC0(intel_connector->edid))
			return NULL;

		return FUNC1(intel_connector->edid);
	} else
		return FUNC2(&intel_connector->base,
				    &intel_dp->aux.ddc);
}