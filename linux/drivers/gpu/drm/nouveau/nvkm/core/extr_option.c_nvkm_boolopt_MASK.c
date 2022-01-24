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
 char* FUNC0 (char const*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

bool
FUNC2(const char *optstr, const char *opt, bool value)
{
	int arglen;

	optstr = FUNC0(optstr, opt, &arglen);
	if (optstr) {
		if (!FUNC1(optstr, "0", arglen) ||
		    !FUNC1(optstr, "no", arglen) ||
		    !FUNC1(optstr, "off", arglen) ||
		    !FUNC1(optstr, "false", arglen))
			value = false;
		else
		if (!FUNC1(optstr, "1", arglen) ||
		    !FUNC1(optstr, "yes", arglen) ||
		    !FUNC1(optstr, "on", arglen) ||
		    !FUNC1(optstr, "true", arglen))
			value = true;
	}

	return value;
}