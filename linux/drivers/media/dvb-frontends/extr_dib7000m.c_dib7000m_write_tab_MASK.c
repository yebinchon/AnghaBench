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
typedef  int u16 ;
struct dib7000m_state {scalar_t__ reg_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000m_state*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dib7000m_state *state, u16 *buf)
{
	u16 l = 0, r, *n;
	n = buf;
	l = *n++;
	while (l) {
		r = *n++;

		if (state->reg_offs && (r >= 112 && r <= 331)) // compensate for 7000MC
			r++;

		do {
			FUNC0(state, r, *n++);
			r++;
		} while (--l);
		l = *n++;
	}
}