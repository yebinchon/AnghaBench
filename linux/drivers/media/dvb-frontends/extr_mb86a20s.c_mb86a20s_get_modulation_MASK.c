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
struct mb86a20s_state {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned char*) ; 
 int DQPSK ; 
 int EINVAL ; 
 int QAM_16 ; 
 int QAM_64 ; 
 int QAM_AUTO ; 
 int QPSK ; 
 int FUNC1 (struct mb86a20s_state*,int) ; 
 int FUNC2 (struct mb86a20s_state*,int,unsigned char) ; 

__attribute__((used)) static int FUNC3(struct mb86a20s_state *state,
				   unsigned layer)
{
	int rc;
	static unsigned char reg[] = {
		[0] = 0x86,	/* Layer A */
		[1] = 0x8a,	/* Layer B */
		[2] = 0x8e,	/* Layer C */
	};

	if (layer >= FUNC0(reg))
		return -EINVAL;
	rc = FUNC2(state, 0x6d, reg[layer]);
	if (rc < 0)
		return rc;
	rc = FUNC1(state, 0x6e);
	if (rc < 0)
		return rc;
	switch ((rc >> 4) & 0x07) {
	case 0:
		return DQPSK;
	case 1:
		return QPSK;
	case 2:
		return QAM_16;
	case 3:
		return QAM_64;
	default:
		return QAM_AUTO;
	}
}