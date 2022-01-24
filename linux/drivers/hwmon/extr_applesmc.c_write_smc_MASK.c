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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  APPLESMC_DATA_PORT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(u8 cmd, const char *key, const u8 *buffer, u8 len)
{
	int i;

	if (FUNC3(cmd) || FUNC1(key)) {
		FUNC0("%s: write arg fail\n", key);
		return -EIO;
	}

	if (FUNC2(len, APPLESMC_DATA_PORT)) {
		FUNC0("%.4s: write len fail\n", key);
		return -EIO;
	}

	for (i = 0; i < len; i++) {
		if (FUNC2(buffer[i], APPLESMC_DATA_PORT)) {
			FUNC0("%s: write data fail\n", key);
			return -EIO;
		}
	}

	return 0;
}