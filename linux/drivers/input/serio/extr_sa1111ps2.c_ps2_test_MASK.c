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
struct ps2if {scalar_t__ base; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PS2CR ; 
 int /*<<< orphan*/  PS2CR_FKC ; 
 int /*<<< orphan*/  PS2CR_FKD ; 
 unsigned int PS2STAT_KBC ; 
 unsigned int PS2STAT_KBD ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (struct ps2if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ps2if *ps2if)
{
	unsigned int stat;
	int ret = 0;

	stat = FUNC1(ps2if, PS2CR_FKC);
	if (stat != PS2STAT_KBD) {
		FUNC0("PS/2 interface test failed[1]: %02x\n", stat);
		ret = -ENODEV;
	}

	stat = FUNC1(ps2if, 0);
	if (stat != (PS2STAT_KBC | PS2STAT_KBD)) {
		FUNC0("PS/2 interface test failed[2]: %02x\n", stat);
		ret = -ENODEV;
	}

	stat = FUNC1(ps2if, PS2CR_FKD);
	if (stat != PS2STAT_KBC) {
		FUNC0("PS/2 interface test failed[3]: %02x\n", stat);
		ret = -ENODEV;
	}

	FUNC2(0, ps2if->base + PS2CR);

	return ret;
}