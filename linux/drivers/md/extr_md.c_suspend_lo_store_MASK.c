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
struct mddev {unsigned long long suspend_lo; TYPE_1__* pers; } ;
typedef  int ssize_t ;
typedef  unsigned long long sector_t ;
struct TYPE_2__ {int /*<<< orphan*/ * quiesce; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,int,unsigned long long*) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct mddev *mddev, const char *buf, size_t len)
{
	unsigned long long new;
	int err;

	err = FUNC0(buf, 10, &new);
	if (err < 0)
		return err;
	if (new != (sector_t)new)
		return -EINVAL;

	err = FUNC1(mddev);
	if (err)
		return err;
	err = -EINVAL;
	if (mddev->pers == NULL ||
	    mddev->pers->quiesce == NULL)
		goto unlock;
	FUNC3(mddev);
	mddev->suspend_lo = new;
	FUNC2(mddev);

	err = 0;
unlock:
	FUNC4(mddev);
	return err ?: len;
}