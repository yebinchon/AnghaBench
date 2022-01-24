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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,long*) ; 
 char* FUNC3 (char const*,char const*,int*) ; 

long
FUNC4(const char *optstr, const char *opt, long value)
{
	long result = value;
	int arglen;
	char *s;

	optstr = FUNC3(optstr, opt, &arglen);
	if (optstr && (s = FUNC1(optstr, arglen, GFP_KERNEL))) {
		int ret = FUNC2(s, 0, &value);
		if (ret == 0)
			result = value;
		FUNC0(s);
	}

	return result;
}