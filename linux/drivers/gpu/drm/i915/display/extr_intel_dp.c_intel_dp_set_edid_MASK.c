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
struct intel_dp {int /*<<< orphan*/  aux; int /*<<< orphan*/  has_audio; struct intel_connector* attached_connector; } ;
struct intel_connector {struct edid* detect_edid; } ;
struct edid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct edid*) ; 
 struct edid* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 

__attribute__((used)) static void
FUNC4(struct intel_dp *intel_dp)
{
	struct intel_connector *intel_connector = intel_dp->attached_connector;
	struct edid *edid;

	FUNC3(intel_dp);
	edid = FUNC2(intel_dp);
	intel_connector->detect_edid = edid;

	intel_dp->has_audio = FUNC0(edid);
	FUNC1(&intel_dp->aux, edid);
}