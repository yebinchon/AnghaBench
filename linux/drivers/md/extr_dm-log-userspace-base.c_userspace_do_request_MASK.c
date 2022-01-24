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
struct log_c {char* usr_argv_str; int /*<<< orphan*/  luid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int DM_ULOG_CTR ; 
 int DM_ULOG_RESUME ; 
 int ESRCH ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int,char*,int,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct log_c *lc, const char *uuid,
				int request_type, char *data, size_t data_size,
				char *rdata, size_t *rdata_size)
{
	int r;

	/*
	 * If the server isn't there, -ESRCH is returned,
	 * and we must keep trying until the server is
	 * restored.
	 */
retry:
	r = FUNC3(uuid, lc->luid, request_type, data,
				 data_size, rdata, rdata_size);

	if (r != -ESRCH)
		return r;

	FUNC0(" Userspace log server not found.");
	while (1) {
		FUNC5(TASK_INTERRUPTIBLE);
		FUNC4(2*HZ);
		FUNC2("Attempting to contact userspace log server...");
		r = FUNC3(uuid, lc->luid, DM_ULOG_CTR,
					 lc->usr_argv_str,
					 FUNC6(lc->usr_argv_str) + 1,
					 NULL, NULL);
		if (!r)
			break;
	}
	FUNC1("Reconnected to userspace log server... DM_ULOG_CTR complete");
	r = FUNC3(uuid, lc->luid, DM_ULOG_RESUME, NULL,
				 0, NULL, NULL);
	if (!r)
		goto retry;

	FUNC0("Error trying to resume userspace log: %d", r);

	return -ESRCH;
}