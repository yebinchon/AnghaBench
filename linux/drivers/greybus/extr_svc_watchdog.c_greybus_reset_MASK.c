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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UMH_WAIT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (char const* const,char**,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct work_struct *work)
{
	static char const start_path[] = "/system/bin/start";
	static char *envp[] = {
		"HOME=/",
		"PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin",
		NULL,
	};
	static char *argv[] = {
		(char *)start_path,
		"unipro_reset",
		NULL,
	};

	FUNC1("svc_watchdog: calling \"%s %s\" to reset greybus network!\n",
	       argv[0], argv[1]);
	FUNC0(start_path, argv, envp, UMH_WAIT_EXEC);
}