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
struct ssp_data {int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  comm_lock; int /*<<< orphan*/  work_wdt; int /*<<< orphan*/  wdt_timer; TYPE_1__* spi; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSP_MSG2SSP_AP_STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ssp_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ssp_data* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ssp_data*) ; 
 scalar_t__ FUNC8 (struct ssp_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ssp_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct ssp_data*,int) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct ssp_data *data = FUNC6(spi);

	if (FUNC8(data, SSP_MSG2SSP_AP_STATUS_SHUTDOWN, 0) < 0)
		FUNC2(&data->spi->dev,
			"SSP_MSG2SSP_AP_STATUS_SHUTDOWN failed\n");

	FUNC10(data, false);
	FUNC9(data);

	FUNC7(data);

	FUNC3(data->spi->irq, data);

	FUNC1(&data->wdt_timer);
	FUNC0(&data->work_wdt);

	FUNC5(&data->comm_lock);
	FUNC5(&data->pending_lock);

	FUNC4(&spi->dev);

	return 0;
}