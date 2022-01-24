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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static void FUNC1(const char *prefix, const char *postfix,
		       const char *name, char *buf, int len)
{
	if (prefix && postfix)
		FUNC0(buf, len, "%s%s%s", prefix, name, postfix);
	else if (prefix)
		FUNC0(buf, len, "%s%s", prefix, name);
	else if (postfix)
		FUNC0(buf, len, "%s%s", name, postfix);
	else
		FUNC0(buf, len, "%s", name);
}