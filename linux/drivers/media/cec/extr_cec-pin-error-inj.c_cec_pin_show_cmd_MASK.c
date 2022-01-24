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
typedef  scalar_t__ u32 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
#define  CEC_ERROR_INJ_MODE_ALWAYS 130 
#define  CEC_ERROR_INJ_MODE_ONCE 129 
#define  CEC_ERROR_INJ_MODE_TOGGLE 128 
 scalar_t__ CEC_ERROR_INJ_OP_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC2(struct seq_file *sf, u32 cmd, u8 mode)
{
	if (cmd == CEC_ERROR_INJ_OP_ANY)
		FUNC1(sf, "any,");
	else
		FUNC0(sf, "0x%02x,", cmd);
	switch (mode) {
	case CEC_ERROR_INJ_MODE_ONCE:
		FUNC1(sf, "once ");
		break;
	case CEC_ERROR_INJ_MODE_ALWAYS:
		FUNC1(sf, "always ");
		break;
	case CEC_ERROR_INJ_MODE_TOGGLE:
		FUNC1(sf, "toggle ");
		break;
	default:
		FUNC1(sf, "off ");
		break;
	}
}