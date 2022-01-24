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
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct gameport*) ; 
 int FUNC2 (struct gameport*,int) ; 

__attribute__((used)) static inline int FUNC3(u8 onbits, u8 offbits, int u_sec, struct gameport* gp, u8 *data)
{
	int i, nloops;

	nloops = FUNC2(gp, u_sec);
	for (i = 0; i < nloops; i++) {
		*data = FUNC1(gp);
		if ((*data & onbits) == onbits &&
		    (~(*data) & offbits) == offbits)
			return 1;
	}
	FUNC0("gameport timed out after %d microseconds.\n", u_sec);
	return 0;
}