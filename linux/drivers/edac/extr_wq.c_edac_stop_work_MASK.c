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
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wq ; 

bool FUNC2(struct delayed_work *work)
{
	bool ret;

	ret = FUNC0(work);
	FUNC1(wq);

	return ret;
}