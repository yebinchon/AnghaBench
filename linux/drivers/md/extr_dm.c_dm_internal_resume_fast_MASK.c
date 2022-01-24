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
struct mapped_device {int /*<<< orphan*/  suspend_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 scalar_t__ FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mapped_device *md)
{
	if (FUNC2(md) || FUNC1(md))
		goto done;

	FUNC0(md);

done:
	FUNC3(&md->suspend_lock);
}