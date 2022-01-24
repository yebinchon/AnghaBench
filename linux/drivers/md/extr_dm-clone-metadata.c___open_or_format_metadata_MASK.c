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
struct dm_clone_metadata {int /*<<< orphan*/  bm; } ;

/* Variables and functions */
 int EPERM ; 
 int FUNC0 (struct dm_clone_metadata*) ; 
 int FUNC1 (struct dm_clone_metadata*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct dm_clone_metadata *cmd, bool may_format_device)
{
	int r;
	bool formatted = false;

	r = FUNC2(cmd->bm, &formatted);
	if (r)
		return r;

	if (!formatted)
		return may_format_device ? FUNC0(cmd) : -EPERM;

	return FUNC1(cmd);
}