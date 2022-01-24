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
struct cbus_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cbus_host*) ; 

__attribute__((used)) static int FUNC1(struct cbus_host *host)
{
	int ret = 0;
	int i;

	for (i = 16; i > 0; i--) {
		int bit = FUNC0(host);

		if (bit < 0)
			return bit;

		if (bit)
			ret |= 1 << (i - 1);
	}
	return ret;
}