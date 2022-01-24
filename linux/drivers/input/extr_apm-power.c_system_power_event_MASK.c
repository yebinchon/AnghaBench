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
 int /*<<< orphan*/  APM_USER_SUSPEND ; 
#define  KEY_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(unsigned int keycode)
{
	switch (keycode) {
	case KEY_SUSPEND:
		FUNC0(APM_USER_SUSPEND);
		FUNC1("Requesting system suspend...\n");
		break;
	default:
		break;
	}
}