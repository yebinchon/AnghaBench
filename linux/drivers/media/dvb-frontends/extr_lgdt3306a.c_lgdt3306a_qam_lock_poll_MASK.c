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
struct lgdt3306a_state {int dummy; } ;
typedef  enum lgdt3306a_lock_status { ____Placeholder_lgdt3306a_lock_status } lgdt3306a_lock_status ;

/* Variables and functions */
 int LG3306_LOCK ; 
 scalar_t__ LG3306_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct lgdt3306a_state*) ; 
 scalar_t__ FUNC2 (struct lgdt3306a_state*) ; 
 int FUNC3 (struct lgdt3306a_state*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static enum lgdt3306a_lock_status
FUNC5(struct lgdt3306a_state *state)
{
	u8 cnt;
	u8 packet_error;
	u32	snr;

	for (cnt = 0; cnt < 10; cnt++) {
		if (FUNC2(state) == LG3306_UNLOCK) {
			FUNC0("no fec lock!\n");
			return LG3306_UNLOCK;
		}

		FUNC4(20);

		packet_error = FUNC3(state);
		snr = FUNC1(state);
		FUNC0("cnt=%d errors=%d snr=%d\n", cnt, packet_error, snr);

		if ((snr >= 1500) && (packet_error < 0xff))
			return LG3306_LOCK;
	}

	FUNC0("not locked!\n");
	return LG3306_UNLOCK;
}