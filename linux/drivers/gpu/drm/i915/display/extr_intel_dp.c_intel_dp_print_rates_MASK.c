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
struct intel_dp {int /*<<< orphan*/  num_common_rates; int /*<<< orphan*/  common_rates; int /*<<< orphan*/  num_sink_rates; int /*<<< orphan*/  sink_rates; int /*<<< orphan*/  num_source_rates; int /*<<< orphan*/  source_rates; } ;
typedef  int /*<<< orphan*/  str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int DRM_UT_KMS ; 
 int drm_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_dp *intel_dp)
{
	char str[128]; /* FIXME: too big for stack? */

	if ((drm_debug & DRM_UT_KMS) == 0)
		return;

	FUNC1(str, sizeof(str),
			   intel_dp->source_rates, intel_dp->num_source_rates);
	FUNC0("source rates: %s\n", str);

	FUNC1(str, sizeof(str),
			   intel_dp->sink_rates, intel_dp->num_sink_rates);
	FUNC0("sink rates: %s\n", str);

	FUNC1(str, sizeof(str),
			   intel_dp->common_rates, intel_dp->num_common_rates);
	FUNC0("common rates: %s\n", str);
}