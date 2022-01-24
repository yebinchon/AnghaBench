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
struct spi_device {int dummy; } ;
struct ad7606_state {int /*<<< orphan*/ * d16; TYPE_1__* bops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* rd_wr_cmd ) (unsigned int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (unsigned int,int) ; 
 struct spi_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad7606_state *st,
				unsigned int addr,
				unsigned int val)
{
	struct spi_device *spi = FUNC3(st->dev);

	st->d16[0] = FUNC0((st->bops->rd_wr_cmd(addr, 1) << 8) |
				  (val & 0x1FF));

	return FUNC1(spi, &st->d16[0], sizeof(st->d16[0]));
}