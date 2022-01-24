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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int DISK_NAME_LEN ; 
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_MAJOR ; 
 unsigned long MINORMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,int,unsigned long*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(const char *val, const struct kernel_param *kp)
{
	/*
	 * val must be "md_*" or "mdNNN".
	 * For "md_*" we allocate an array with a large free minor number, and
	 * set the name to val.  val must not already be an active name.
	 * For "mdNNN" we allocate an array with the minor number NNN
	 * which must not already be in use.
	 */
	int len = FUNC5(val);
	char buf[DISK_NAME_LEN];
	unsigned long devnum;

	while (len && val[len-1] == '\n')
		len--;
	if (len >= DISK_NAME_LEN)
		return -E2BIG;
	FUNC4(buf, val, len+1);
	if (FUNC6(buf, "md_", 3) == 0)
		return FUNC3(0, buf);
	if (FUNC6(buf, "md", 2) == 0 &&
	    FUNC1(buf[2]) &&
	    FUNC2(buf+2, 10, &devnum) == 0 &&
	    devnum <= MINORMASK)
		return FUNC3(FUNC0(MD_MAJOR, devnum), NULL);

	return -EINVAL;
}