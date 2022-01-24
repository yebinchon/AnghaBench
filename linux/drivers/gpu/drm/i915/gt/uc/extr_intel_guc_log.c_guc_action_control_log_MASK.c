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
typedef  scalar_t__ u32 ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ GUC_LOG_CONTROL_DEFAULT_LOGGING ; 
 scalar_t__ GUC_LOG_CONTROL_LOGGING_ENABLED ; 
 scalar_t__ GUC_LOG_CONTROL_VERBOSITY_SHIFT ; 
 scalar_t__ GUC_LOG_VERBOSITY_MAX ; 
 scalar_t__ INTEL_GUC_ACTION_UK_LOG_ENABLE_LOGGING ; 
 int FUNC2 (struct intel_guc*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct intel_guc *guc, bool enable,
				  bool default_logging, u32 verbosity)
{
	u32 action[] = {
		INTEL_GUC_ACTION_UK_LOG_ENABLE_LOGGING,
		(enable ? GUC_LOG_CONTROL_LOGGING_ENABLED : 0) |
		(verbosity << GUC_LOG_CONTROL_VERBOSITY_SHIFT) |
		(default_logging ? GUC_LOG_CONTROL_DEFAULT_LOGGING : 0)
	};

	FUNC1(verbosity > GUC_LOG_VERBOSITY_MAX);

	return FUNC2(guc, action, FUNC0(action));
}