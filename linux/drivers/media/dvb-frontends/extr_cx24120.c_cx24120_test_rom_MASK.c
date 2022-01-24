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
struct cx24120_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx24120_state*,int) ; 
 int FUNC1 (struct cx24120_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct cx24120_state *state)
{
	int err, ret;

	err = FUNC0(state, 0xfd);
	if (err & 4) {
		ret = FUNC0(state, 0xdf) & 0xfe;
		err = FUNC1(state, 0xdf, ret);
	}
	return err;
}