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
 int MOUSEDEV_MINORS ; 
 int /*<<< orphan*/  MOUSEDEV_MINOR_BASE ; 
 int /*<<< orphan*/  MOUSEDEV_MIX ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(bool mixdev)
{
	int minor;

	if (mixdev) {
		minor = FUNC0(MOUSEDEV_MIX, 1, false);
		if (minor < 0)
			FUNC1("failed to reserve mixdev minor: %d\n", minor);
	} else {
		minor = FUNC0(MOUSEDEV_MINOR_BASE,
					    MOUSEDEV_MINORS, true);
		if (minor < 0)
			FUNC1("failed to reserve new minor: %d\n", minor);
	}

	return minor;
}