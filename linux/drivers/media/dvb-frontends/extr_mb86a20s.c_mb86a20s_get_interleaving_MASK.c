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
 int EINVAL ; 
 int FUNC1 (struct mb86a20s_state*,int) ; 
 int FUNC2 (struct mb86a20s_state*,int,unsigned char) ; 

__attribute__((used)) static int FUNC3(struct mb86a20s_state *state,
				     unsigned layer)
{
	int rc;
	int interleaving[] = {
		0, 1, 2, 4, 8
	};

	static unsigned char reg[] = {
		[0] = 0x88,	/* Layer A */
		[1] = 0x8c,	/* Layer B */
		[2] = 0x90,	/* Layer C */
	};

	if (layer >= FUNC0(reg))
		return -EINVAL;
	rc = FUNC2(state, 0x6d, reg[layer]);
	if (rc < 0)
		return rc;
	rc = FUNC1(state, 0x6e);
	if (rc < 0)
		return rc;

	return interleaving[(rc >> 4) & 0x07];
}