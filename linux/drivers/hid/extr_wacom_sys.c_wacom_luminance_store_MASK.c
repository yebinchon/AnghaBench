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
typedef  unsigned int u8 ;
struct wacom {int /*<<< orphan*/  lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wacom*) ; 

__attribute__((used)) static ssize_t FUNC4(struct wacom *wacom, u8 *dest,
				     const char *buf, size_t count)
{
	unsigned int value;
	int err;

	err = FUNC0(buf, 10, &value);
	if (err)
		return err;

	FUNC1(&wacom->lock);

	*dest = value & 0x7f;
	err = FUNC3(wacom);

	FUNC2(&wacom->lock);

	return err < 0 ? err : count;
}