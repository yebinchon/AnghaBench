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
struct scmi_xfer {int /*<<< orphan*/ * async_done; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  SCMI_MAX_RESPONSE_TIMEOUT ; 
 int /*<<< orphan*/  async_response ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(const struct scmi_handle *handle,
			       struct scmi_xfer *xfer)
{
	int ret, timeout = FUNC1(SCMI_MAX_RESPONSE_TIMEOUT);
	FUNC0(async_response);

	xfer->async_done = &async_response;

	ret = FUNC2(handle, xfer);
	if (!ret && !FUNC3(xfer->async_done, timeout))
		ret = -ETIMEDOUT;

	xfer->async_done = NULL;
	return ret;
}