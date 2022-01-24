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
struct ipu_soc {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  IPU_MEM_RST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ipu_soc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_soc*,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ipu_soc *ipu)
{
	unsigned long timeout;

	FUNC2(ipu, 0x807FFFFF, IPU_MEM_RST);

	timeout = jiffies + FUNC3(1000);
	while (FUNC1(ipu, IPU_MEM_RST) & 0x80000000) {
		if (FUNC4(jiffies, timeout))
			return -ETIME;
		FUNC0();
	}

	return 0;
}