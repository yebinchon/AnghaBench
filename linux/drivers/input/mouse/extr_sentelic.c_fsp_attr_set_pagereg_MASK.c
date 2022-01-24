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
struct psmouse {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct psmouse*,unsigned int) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC2(struct psmouse *psmouse, void *data,
					const char *buf, size_t count)
{
	unsigned int val;
	int err;

	err = FUNC1(buf, 16, &val);
	if (err)
		return err;

	if (val > 0xff)
		return -EINVAL;

	if (FUNC0(psmouse, val))
		return -EIO;

	return count;
}