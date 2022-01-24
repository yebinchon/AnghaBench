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
struct dib7000m_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000m_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct dib7000m_state *state)
{

/* internal */
//	dib7000m_write_word(state, 928, (3 << 14) | (1 << 12) | (524 << 0)); // sampling clock of the SAD is writing in set_bandwidth
	FUNC0(state, 929, (0 << 1) | (0 << 0));
	FUNC0(state, 930, 776); // 0.625*3.3 / 4096

	/* do the calibration */
	FUNC0(state, 929, (1 << 0));
	FUNC0(state, 929, (0 << 0));

	FUNC1(1);

	return 0;
}