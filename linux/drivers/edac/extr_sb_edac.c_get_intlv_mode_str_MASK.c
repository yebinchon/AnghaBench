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
typedef  int /*<<< orphan*/  u32 ;
typedef  enum type { ____Placeholder_type } type ;

/* Variables and functions */
 int KNIGHTS_LANDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char const** knl_intlv_mode ; 

__attribute__((used)) static const char *FUNC2(u32 reg, enum type t)
{
	if (t == KNIGHTS_LANDING)
		return knl_intlv_mode[FUNC1(reg)];
	else
		return FUNC0(reg) ? "[8:6]" : "[8:6]XOR[18:16]";
}