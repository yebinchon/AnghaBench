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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(const char *prefix, const char *name,
			     char val[2], bool fallback)
{
	char buf[10];
	int err;

	err = FUNC0(prefix, NULL, name, buf, sizeof(buf), fallback);
	if (err < 0)
		return;
	if (buf[0] == '0')
		return;
	if (FUNC3(buf) > 2) {
		FUNC2("alpha2 is too long %s\n", buf);
		return;
	}
	FUNC1(val, buf, 2);
}