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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/  cs_change; int /*<<< orphan*/ * tx_buf; } ;
struct spi_device {int dummy; } ;
struct ad7606_state {int /*<<< orphan*/ * d16; TYPE_1__* bops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* rd_wr_cmd ) (unsigned int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct spi_device*,struct spi_transfer*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 struct spi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ad7606_state *st, unsigned int addr)
{
	struct spi_device *spi = FUNC5(st->dev);
	struct spi_transfer t[] = {
		{
			.tx_buf = &st->d16[0],
			.len = 2,
			.cs_change = 0,
		}, {
			.rx_buf = &st->d16[1],
			.len = 2,
		},
	};
	int ret;

	st->d16[0] = FUNC2(st->bops->rd_wr_cmd(addr, 0) << 8);

	ret = FUNC3(spi, t, FUNC0(t));
	if (ret < 0)
		return ret;

	return FUNC1(st->d16[1]);
}