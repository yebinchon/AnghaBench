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
struct TYPE_2__ {int /*<<< orphan*/  bl_status; int /*<<< orphan*/  bl_file; } ;
struct cyttsp {int /*<<< orphan*/  state; TYPE_1__ bl_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CY_ACTIVE_STATE ; 
 scalar_t__ CY_OPERATE_MODE ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cyttsp*) ; 
 int FUNC5 (struct cyttsp*) ; 
 int FUNC6 (struct cyttsp*) ; 
 int FUNC7 (struct cyttsp*) ; 
 int FUNC8 (struct cyttsp*) ; 
 int FUNC9 (struct cyttsp*) ; 
 int FUNC10 (struct cyttsp*) ; 

__attribute__((used)) static int FUNC11(struct cyttsp *ts)
{
	int error;

	error = FUNC10(ts);
	if (error)
		return error;

	error = FUNC6(ts);
	if (error)
		return error;

	if (FUNC0(ts->bl_data.bl_status) &&
	    FUNC3(ts->bl_data.bl_status)) {
		error = FUNC5(ts);
		if (error)
			return error;
	}

	if (FUNC1(ts->bl_data.bl_file) != CY_OPERATE_MODE ||
	    FUNC2(ts->bl_data.bl_status)) {
		return -ENODEV;
	}

	error = FUNC8(ts);
	if (error)
		return error;

	error = FUNC9(ts);
	if (error)
		return error;

	error = FUNC7(ts);
	if (error)
		return error;

	/* init active distance */
	error = FUNC4(ts);
	if (error)
		return error;

	ts->state = CY_ACTIVE_STATE;

	return 0;
}