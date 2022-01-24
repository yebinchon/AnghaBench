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
typedef  int u32 ;

/* Variables and functions */
#define  SELFID_PORT_CHILD 131 
#define  SELFID_PORT_NCONN 130 
#define  SELFID_PORT_NONE 129 
#define  SELFID_PORT_PARENT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static u32 *FUNC3(u32 *sid, int *total_port_count, int *child_port_count)
{
	u32 q;
	int port_type, shift, seq;

	*total_port_count = 0;
	*child_port_count = 0;

	shift = 6;
	q = *sid;
	seq = 0;

	while (1) {
		port_type = (q >> shift) & 0x03;
		switch (port_type) {
		case SELFID_PORT_CHILD:
			(*child_port_count)++;
			/* fall through */
		case SELFID_PORT_PARENT:
		case SELFID_PORT_NCONN:
			(*total_port_count)++;
		case SELFID_PORT_NONE:
			break;
		}

		shift -= 2;
		if (shift == 0) {
			if (!FUNC2(q))
				return sid + 1;

			shift = 16;
			sid++;
			q = *sid;

			/*
			 * Check that the extra packets actually are
			 * extended self ID packets and that the
			 * sequence numbers in the extended self ID
			 * packets increase as expected.
			 */

			if (!FUNC0(q) ||
			    seq != FUNC1(q))
				return NULL;

			seq++;
		}
	}
}