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
 unsigned int FUNC0 (char const**) ; 
 int EINVAL ; 
 char const** gid_type_str ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,size_t) ; 

int FUNC3(const char *buf)
{
	unsigned int i;
	size_t len;
	int err = -EINVAL;

	len = FUNC1(buf);
	if (len == 0)
		return -EINVAL;

	if (buf[len - 1] == '\n')
		len--;

	for (i = 0; i < FUNC0(gid_type_str); ++i)
		if (gid_type_str[i] && !FUNC2(buf, gid_type_str[i], len) &&
		    len == FUNC1(gid_type_str[i])) {
			err = i;
			break;
		}

	return err;
}