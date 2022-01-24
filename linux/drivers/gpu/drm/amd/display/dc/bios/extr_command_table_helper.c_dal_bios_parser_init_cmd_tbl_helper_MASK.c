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
struct command_table_helper {int dummy; } ;
typedef  enum dce_version { ____Placeholder_dce_version } dce_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DCE_VERSION_10_0 134 
#define  DCE_VERSION_11_0 133 
#define  DCE_VERSION_11_2 132 
#define  DCE_VERSION_11_22 131 
#define  DCE_VERSION_8_0 130 
#define  DCE_VERSION_8_1 129 
#define  DCE_VERSION_8_3 128 
 struct command_table_helper* FUNC1 () ; 
 struct command_table_helper* FUNC2 () ; 
 struct command_table_helper* FUNC3 () ; 

bool FUNC4(
	const struct command_table_helper **h,
	enum dce_version dce)
{
	switch (dce) {
	case DCE_VERSION_8_0:
	case DCE_VERSION_8_1:
	case DCE_VERSION_8_3:
		*h = FUNC3();
		return true;

	case DCE_VERSION_10_0:
		*h = FUNC1();
		return true;

	case DCE_VERSION_11_0:
		*h = FUNC1();
		return true;

	case DCE_VERSION_11_2:
	case DCE_VERSION_11_22:
		*h = FUNC2();
		return true;

	default:
		/* Unsupported DCE */
		FUNC0();
		return false;
	}
}