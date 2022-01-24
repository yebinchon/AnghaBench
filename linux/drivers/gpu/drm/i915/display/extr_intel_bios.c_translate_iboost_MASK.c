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
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static u8 FUNC2(u8 val)
{
	static const u8 mapping[] = { 1, 3, 7 }; /* See VBT spec */

	if (val >= FUNC0(mapping)) {
		FUNC1("Unsupported I_boost value found in VBT (%d), display may not work properly\n", val);
		return 0;
	}
	return mapping[val];
}