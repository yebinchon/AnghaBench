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
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  i8042_lock ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct serio *port, unsigned char c)
{
	unsigned long flags;
	int retval = 0;

	FUNC3(&i8042_lock, flags);

	if (!(retval = FUNC1())) {
		FUNC0("%02x -> i8042 (kbd-data)\n", c);
		FUNC2(c);
	}

	FUNC4(&i8042_lock, flags);

	return retval;
}