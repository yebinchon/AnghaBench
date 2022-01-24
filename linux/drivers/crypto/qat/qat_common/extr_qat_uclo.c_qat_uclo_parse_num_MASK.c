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
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(char *str, unsigned int *num)
{
	char buf[16] = {0};
	unsigned long ae = 0;
	int i;

	FUNC2(buf, str, 15);
	for (i = 0; i < 16; i++) {
		if (!FUNC0(buf[i])) {
			buf[i] = '\0';
			break;
		}
	}
	if ((FUNC1(buf, 10, &ae)))
		return -EFAULT;

	*num = (unsigned int)ae;
	return 0;
}