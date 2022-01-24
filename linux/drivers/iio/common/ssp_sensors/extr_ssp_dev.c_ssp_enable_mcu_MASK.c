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
struct ssp_data {int shut_down; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ssp_data *data, bool enable)
{
	FUNC0(&data->spi->dev, "current shutdown = %d, old = %d\n", enable,
		 data->shut_down);

	if (enable && data->shut_down) {
		data->shut_down = false;
		FUNC4(data->spi->irq);
		FUNC5(data->spi->irq);
	} else if (!enable && !data->shut_down) {
		data->shut_down = true;
		FUNC2(data->spi->irq);
		FUNC3(data->spi->irq);
	} else {
		FUNC1(&data->spi->dev, "current shutdown = %d, old = %d\n",
			 enable, data->shut_down);
	}
}