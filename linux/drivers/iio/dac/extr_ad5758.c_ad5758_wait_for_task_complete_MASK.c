#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ad5758_state {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct ad5758_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st,
					 unsigned int reg,
					 unsigned int mask)
{
	unsigned int timeout;
	int ret;

	timeout = 10;
	do {
		ret = FUNC0(st, reg);
		if (ret < 0)
			return ret;

		if (!(ret & mask))
			return 0;

		FUNC2(100, 1000);
	} while (--timeout);

	FUNC1(&st->spi->dev,
		"Error reading bit 0x%x in 0x%x register\n", mask, reg);

	return -EIO;
}