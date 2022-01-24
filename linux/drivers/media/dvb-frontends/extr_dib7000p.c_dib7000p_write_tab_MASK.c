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
typedef  scalar_t__ u16 ;
struct dib7000p_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib7000p_state*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dib7000p_state *state, u16 * buf)
{
	u16 l = 0, r, *n;
	n = buf;
	l = *n++;
	while (l) {
		r = *n++;

		do {
			FUNC0(state, r, *n++);
			r++;
		} while (--l);
		l = *n++;
	}
}