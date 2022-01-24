#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int fw_is_running; int memcmd; } ;
struct TYPE_4__ {TYPE_1__ risc; } ;
struct dib9000_state {TYPE_2__ platform; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct dib9000_state*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dib9000_state*,int) ; 
 scalar_t__ FUNC2 (struct dib9000_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dib9000_state *state, const u8 * codeA, u32 lenA, const u8 * codeB, u32 lenB)
{
	/* Reconfig pool mac ram */
	FUNC3(state, 1225, 0x02);	/* A: 8k C, 4 k D - B: 32k C 6 k D - IRAM 96k */
	FUNC3(state, 1226, 0x05);

	/* Toggles IP crypto to Host APB interface. */
	FUNC3(state, 1542, 1);

	/* Set jump and no jump in the dma box */
	FUNC3(state, 1074, 0);
	FUNC3(state, 1075, 0);

	/* Set MAC as APB Master. */
	FUNC3(state, 1237, 0);

	/* Reset the RISCs */
	if (codeA != NULL)
		FUNC3(state, 1024, 2);
	else
		FUNC3(state, 1024, 15);
	if (codeB != NULL)
		FUNC3(state, 1040, 2);

	if (codeA != NULL)
		FUNC0(state, 0, 0x1234, codeA, lenA);
	if (codeB != NULL)
		FUNC0(state, 1, 0x1234, codeB, lenB);

	/* Run the RISCs */
	if (codeA != NULL)
		FUNC3(state, 1024, 0);
	if (codeB != NULL)
		FUNC3(state, 1040, 0);

	if (codeA != NULL)
		if (FUNC1(state, 0) != 0)
			return -EIO;
	if (codeB != NULL)
		if (FUNC1(state, 1) != 0)
			return -EIO;

	FUNC4(100);
	state->platform.risc.fw_is_running = 1;

	if (FUNC2(state) != 0)
		return -EINVAL;

	state->platform.risc.memcmd = 0xff;
	return 0;
}