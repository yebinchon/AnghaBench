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
typedef  int /*<<< orphan*/  u32 ;
struct opal_msg {int dummy; } ;
struct opal_i2c_request {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int OPAL_ASYNC_COMPLETION ; 
 int OPAL_SUCCESS ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct opal_msg*) ; 
 int FUNC4 (struct opal_msg) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct opal_i2c_request*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(u32 bus_id, struct opal_i2c_request *req)
{
	struct opal_msg msg;
	int token, rc;

	token = FUNC1();
	if (token < 0) {
		if (token != -ERESTARTSYS)
			FUNC6("Failed to get the async token\n");

		return token;
	}

	rc = FUNC5(token, bus_id, req);
	if (rc != OPAL_ASYNC_COMPLETION) {
		rc = FUNC0(rc);
		goto exit;
	}

	rc = FUNC3(token, &msg);
	if (rc)
		goto exit;

	rc = FUNC4(msg);
	if (rc != OPAL_SUCCESS) {
		rc = FUNC0(rc);
		goto exit;
	}

exit:
	FUNC2(token);
	return rc;
}