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
 int /*<<< orphan*/  LOCKDEP_STILL_OK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(unsigned int taint)
{
	/*
	 * The system is "ok", just about surviving for the user, but
	 * CI results are now unreliable as the HW is very suspect.
	 * CI checks the taint state after every test and will reboot
	 * the machine if the kernel is tainted.
	 */
	FUNC0(taint, LOCKDEP_STILL_OK);
}