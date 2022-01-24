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
 int FUNC0 (char**) ; 
 int HGPK_MODE_INVALID ; 
 char** hgpk_mode_names ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *buf, int len)
{
	int i;

	for (i = 0; i < FUNC0(hgpk_mode_names); i++) {
		const char *name = hgpk_mode_names[i];
		if (FUNC1(name) == len && !FUNC2(name, buf, len))
			return i;
	}

	return HGPK_MODE_INVALID;
}