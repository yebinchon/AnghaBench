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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  P2SB_ADDR_OFF ; 
 int P2SB_BUSY ; 
 int /*<<< orphan*/  P2SB_DATA_OFF ; 
 int /*<<< orphan*/  P2SB_EADD_OFF ; 
 int /*<<< orphan*/  P2SB_HIDE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  P2SB_ROUT_OFF ; 
 int /*<<< orphan*/  P2SB_STAT_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  byte ; 
 int /*<<< orphan*/  dword ; 
 scalar_t__ FUNC2 (int*) ; 
 int /*<<< orphan*/  word ; 

__attribute__((used)) static int FUNC3(int port, int off, int op, u32 *data)
{
	int retries = 0xff, ret;
	u16 status;
	u8 hidden;

	/* Unhide the P2SB device, if it's hidden */
	FUNC0(byte, P2SB_HIDE_OFF, &hidden);
	if (hidden)
		FUNC1(byte, P2SB_HIDE_OFF, 0);

	if (FUNC2(&status)) {
		ret = -EAGAIN;
		goto out;
	}

	FUNC1(dword, P2SB_ADDR_OFF, (port << 24) | off);
	FUNC1(dword, P2SB_DATA_OFF, 0);
	FUNC1(dword, P2SB_EADD_OFF, 0);
	FUNC1(word, P2SB_ROUT_OFF, 0);
	FUNC1(word, P2SB_STAT_OFF, (op << 8) | P2SB_BUSY);

	while (FUNC2(&status)) {
		if (retries-- == 0) {
			ret = -EBUSY;
			goto out;
		}
	}

	FUNC0(dword, P2SB_DATA_OFF, data);
	ret = (status >> 1) & 0x3;
out:
	/* Hide the P2SB device, if it was hidden before */
	if (hidden)
		FUNC1(byte, P2SB_HIDE_OFF, hidden);

	return ret;
}