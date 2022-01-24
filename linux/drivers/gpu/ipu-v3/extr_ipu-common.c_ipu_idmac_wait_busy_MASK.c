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
struct ipuv3_channel {int /*<<< orphan*/  num; struct ipu_soc* ipu; } ;
struct ipu_soc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

int FUNC6(struct ipuv3_channel *channel, int ms)
{
	struct ipu_soc *ipu = channel->ipu;
	unsigned long timeout;

	timeout = jiffies + FUNC4(ms);
	while (FUNC3(ipu, FUNC0(channel->num)) &
			FUNC2(channel->num)) {
		if (FUNC5(jiffies, timeout))
			return -ETIMEDOUT;
		FUNC1();
	}

	return 0;
}