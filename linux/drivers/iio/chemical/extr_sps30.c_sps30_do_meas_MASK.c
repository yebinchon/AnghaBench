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
struct sps30_state {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ MEASURING ; 
 scalar_t__ RESET ; 
 int /*<<< orphan*/  SPS30_READ_DATA ; 
 int /*<<< orphan*/  SPS30_READ_DATA_READY_FLAG ; 
 int /*<<< orphan*/  SPS30_START_MEAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sps30_state*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static int FUNC3(struct sps30_state *state, s32 *data, int size)
{
	int i, ret, tries = 5;
	u8 tmp[16];

	if (state->state == RESET) {
		ret = FUNC1(state, SPS30_START_MEAS, NULL, 0);
		if (ret)
			return ret;

		state->state = MEASURING;
	}

	while (tries--) {
		ret = FUNC1(state, SPS30_READ_DATA_READY_FLAG, tmp, 2);
		if (ret)
			return -EIO;

		/* new measurements ready to be read */
		if (tmp[1] == 1)
			break;

		FUNC0(300);
	}

	if (tries == -1)
		return -ETIMEDOUT;

	ret = FUNC1(state, SPS30_READ_DATA, tmp, sizeof(int) * size);
	if (ret)
		return ret;

	for (i = 0; i < size; i++)
		data[i] = FUNC2(&tmp[4 * i]);

	return 0;
}