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
struct hfi1_pportdata {int dummy; } ;

/* Variables and functions */
 int HFI_TRANSITION_ALLOWED ; 
 int HFI_TRANSITION_DISALLOWED ; 
 int HFI_TRANSITION_IGNORED ; 
 int HFI_TRANSITION_UNDEFINED ; 
 scalar_t__ IB_PORTPHYSSTATE_POLLING ; 
 scalar_t__ OPA_PORTPHYSSTATE_OFFLINE ; 
 scalar_t__ FUNC0 (struct hfi1_pportdata*) ; 
 scalar_t__ FUNC1 (struct hfi1_pportdata*) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hfi1_pportdata *ppd,
					  u32 logical_new, u32 physical_new)
{
	u32 physical_old = FUNC1(ppd);
	u32 logical_old = FUNC0(ppd);
	int ret, logical_allowed, physical_allowed;

	ret = FUNC2(logical_old, logical_new);
	logical_allowed = ret;

	if (ret == HFI_TRANSITION_DISALLOWED ||
	    ret == HFI_TRANSITION_UNDEFINED) {
		FUNC6("invalid logical state transition %s -> %s\n",
			FUNC3(logical_old),
			FUNC3(logical_new));
		return ret;
	}

	ret = FUNC5(physical_old, physical_new);
	physical_allowed = ret;

	if (ret == HFI_TRANSITION_DISALLOWED ||
	    ret == HFI_TRANSITION_UNDEFINED) {
		FUNC6("invalid physical state transition %s -> %s\n",
			FUNC4(physical_old),
			FUNC4(physical_new));
		return ret;
	}

	if (logical_allowed == HFI_TRANSITION_IGNORED &&
	    physical_allowed == HFI_TRANSITION_IGNORED)
		return HFI_TRANSITION_IGNORED;

	/*
	 * A change request of Physical Port State from
	 * 'Offline' to 'Polling' should be ignored.
	 */
	if ((physical_old == OPA_PORTPHYSSTATE_OFFLINE) &&
	    (physical_new == IB_PORTPHYSSTATE_POLLING))
		return HFI_TRANSITION_IGNORED;

	/*
	 * Either physical_allowed or logical_allowed is
	 * HFI_TRANSITION_ALLOWED.
	 */
	return HFI_TRANSITION_ALLOWED;
}