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
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  wf_ad7417_driver ; 

__attribute__((used)) static int FUNC2(void)
{
	/* This is only supported on these machines */
	if (!FUNC1("PowerMac7,2") &&
	    !FUNC1("PowerMac7,3") &&
	    !FUNC1("RackMac3,1"))
		return -ENODEV;

	return FUNC0(&wf_ad7417_driver);
}