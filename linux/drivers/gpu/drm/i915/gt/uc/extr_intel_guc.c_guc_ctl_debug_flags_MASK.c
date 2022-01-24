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
typedef  int u32 ;
struct intel_guc {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int GUC_LOG_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int GUC_LOG_VERBOSITY_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct intel_guc *guc)
{
	u32 level = FUNC2(&guc->log);
	u32 flags = 0;

	if (!FUNC0(level))
		flags |= GUC_LOG_DISABLED;
	else
		flags |= FUNC1(level) <<
			 GUC_LOG_VERBOSITY_SHIFT;

	return flags;
}