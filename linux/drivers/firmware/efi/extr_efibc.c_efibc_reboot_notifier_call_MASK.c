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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 unsigned long SYS_RESTART ; 
 int FUNC0 (char*,char const*) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *notifier,
				      unsigned long event, void *data)
{
	const char *reason = "shutdown";
	int ret;

	if (event == SYS_RESTART)
		reason = "reboot";

	ret = FUNC0("LoaderEntryRebootReason", reason);
	if (ret || !data)
		return NOTIFY_DONE;

	FUNC0("LoaderEntryOneShot", (char *)data);

	return NOTIFY_DONE;
}