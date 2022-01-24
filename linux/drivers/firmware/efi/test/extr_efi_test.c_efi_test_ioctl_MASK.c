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
struct file {int dummy; } ;

/* Variables and functions */
#define  EFI_RUNTIME_GET_NEXTHIGHMONOTONICCOUNT 138 
#define  EFI_RUNTIME_GET_NEXTVARIABLENAME 137 
#define  EFI_RUNTIME_GET_TIME 136 
#define  EFI_RUNTIME_GET_VARIABLE 135 
#define  EFI_RUNTIME_GET_WAKETIME 134 
#define  EFI_RUNTIME_QUERY_CAPSULECAPABILITIES 133 
#define  EFI_RUNTIME_QUERY_VARIABLEINFO 132 
#define  EFI_RUNTIME_RESET_SYSTEM 131 
#define  EFI_RUNTIME_SET_TIME 130 
#define  EFI_RUNTIME_SET_VARIABLE 129 
#define  EFI_RUNTIME_SET_WAKETIME 128 
 long ENOTTY ; 
 long FUNC0 (unsigned long) ; 
 long FUNC1 (unsigned long) ; 
 long FUNC2 (unsigned long) ; 
 long FUNC3 (unsigned long) ; 
 long FUNC4 (unsigned long) ; 
 long FUNC5 (unsigned long) ; 
 long FUNC6 (unsigned long) ; 
 long FUNC7 (unsigned long) ; 
 long FUNC8 (unsigned long) ; 
 long FUNC9 (unsigned long) ; 
 long FUNC10 (unsigned long) ; 

__attribute__((used)) static long FUNC11(struct file *file, unsigned int cmd,
							unsigned long arg)
{
	switch (cmd) {
	case EFI_RUNTIME_GET_VARIABLE:
		return FUNC3(arg);

	case EFI_RUNTIME_SET_VARIABLE:
		return FUNC9(arg);

	case EFI_RUNTIME_GET_TIME:
		return FUNC2(arg);

	case EFI_RUNTIME_SET_TIME:
		return FUNC8(arg);

	case EFI_RUNTIME_GET_WAKETIME:
		return FUNC4(arg);

	case EFI_RUNTIME_SET_WAKETIME:
		return FUNC10(arg);

	case EFI_RUNTIME_GET_NEXTVARIABLENAME:
		return FUNC1(arg);

	case EFI_RUNTIME_GET_NEXTHIGHMONOTONICCOUNT:
		return FUNC0(arg);

	case EFI_RUNTIME_QUERY_VARIABLEINFO:
		return FUNC6(arg);

	case EFI_RUNTIME_QUERY_CAPSULECAPABILITIES:
		return FUNC5(arg);

	case EFI_RUNTIME_RESET_SYSTEM:
		return FUNC7(arg);
	}

	return -ENOTTY;
}