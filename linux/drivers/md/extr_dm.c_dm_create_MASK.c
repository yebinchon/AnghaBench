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
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct mapped_device* FUNC0 (int) ; 
 int FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 

int FUNC3(int minor, struct mapped_device **result)
{
	int r;
	struct mapped_device *md;

	md = FUNC0(minor);
	if (!md)
		return -ENXIO;

	r = FUNC1(md);
	if (r) {
		FUNC2(md);
		return r;
	}

	*result = md;
	return 0;
}