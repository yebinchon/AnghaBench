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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *,char const*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,char) ; 

__attribute__((used)) static void FUNC4(const char *prefix, const char *name,
			       u8 val[6], bool fallback)
{
	char buf[100];
	int err;

	err = FUNC0(prefix, NULL, name, buf, sizeof(buf), fallback);
	if (err < 0)
		return;

	FUNC3(buf, '-', ':');
	if (!FUNC1(buf, val))
		FUNC2("Can not parse mac address: %s\n", buf);
}