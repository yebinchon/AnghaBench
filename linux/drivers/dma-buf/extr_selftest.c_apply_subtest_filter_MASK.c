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
 int /*<<< orphan*/  __st_filter ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static bool FUNC5(const char *caller, const char *name)
{
	char *filter, *sep, *tok;
	bool result = true;

	filter = FUNC1(__st_filter, GFP_KERNEL);
	for (sep = filter; (tok = FUNC4(&sep, ","));) {
		bool allow = true;
		char *sl;

		if (*tok == '!') {
			allow = false;
			tok++;
		}

		if (*tok == '\0')
			continue;

		sl = FUNC2(tok, '/');
		if (sl) {
			*sl++ = '\0';
			if (FUNC3(tok, caller)) {
				if (allow)
					result = false;
				continue;
			}
			tok = sl;
		}

		if (FUNC3(tok, name)) {
			if (allow)
				result = false;
			continue;
		}

		result = allow;
		break;
	}
	FUNC0(filter);

	return result;
}