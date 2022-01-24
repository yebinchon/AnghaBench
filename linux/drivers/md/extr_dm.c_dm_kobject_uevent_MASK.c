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
struct mapped_device {int /*<<< orphan*/  disk; } ;
typedef  enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 char* DM_COOKIE_ENV_VAR_NAME ; 
 int DM_COOKIE_LENGTH ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,unsigned int) ; 

int FUNC4(struct mapped_device *md, enum kobject_action action,
		       unsigned cookie)
{
	char udev_cookie[DM_COOKIE_LENGTH];
	char *envp[] = { udev_cookie, NULL };

	if (!cookie)
		return FUNC1(&FUNC0(md->disk)->kobj, action);
	else {
		FUNC3(udev_cookie, DM_COOKIE_LENGTH, "%s=%u",
			 DM_COOKIE_ENV_VAR_NAME, cookie);
		return FUNC2(&FUNC0(md->disk)->kobj,
					  action, envp);
	}
}