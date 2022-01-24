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
struct gameport {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  GRIP_INIT_DELAY ; 
 int IO_MODE_FAST ; 
 int /*<<< orphan*/  IO_RESET ; 
 int IO_RETRY ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*) ; 
 scalar_t__* init_seq ; 
 int FUNC2 (struct gameport*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gameport *gameport, u32 *packet)
{
	int i;
	int flags, tries = 0, bads = 0;

	for (i = 0; i < FUNC0(init_seq); i++) {     /* Send magic sequence */
		if (init_seq[i])
			FUNC1(gameport);
		FUNC3(GRIP_INIT_DELAY);
	}

	for (i = 0; i < 16; i++)            /* Wait for multiport to settle */
		FUNC3(GRIP_INIT_DELAY);

	while (tries < 64 && bads < 8) {    /* Reset multiport and try getting a packet */

		flags = FUNC2(gameport, IO_RESET, 0x27, packet);

		if (flags & IO_MODE_FAST)
			return 1;

		if (flags & IO_RETRY)
			tries++;
		else
			bads++;
	}
	return 0;
}