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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, unsigned int on)
{
	int err;

	FUNC0("VIDIOC_OVERLAY on:%d\n", on);
	if (on)
		err = FUNC1(fh);
	else
		err = FUNC2(fh);
	return err;
}