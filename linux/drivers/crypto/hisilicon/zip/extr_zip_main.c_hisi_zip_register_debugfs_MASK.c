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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * hzip_debugfs_root ; 

__attribute__((used)) static void FUNC3(void)
{
	if (!FUNC2())
		return;

	hzip_debugfs_root = FUNC1("hisi_zip", NULL);
	if (FUNC0(hzip_debugfs_root))
		hzip_debugfs_root = NULL;
}