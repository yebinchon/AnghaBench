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
struct ssp_data {scalar_t__ fw_dl_state; int* delay_buf; int time_syncing; int shut_down; int /*<<< orphan*/  comm_lock; int /*<<< orphan*/  pending_lock; struct spi_device* spi; int /*<<< orphan*/  wdt_timer; int /*<<< orphan*/  work_refresh; int /*<<< orphan*/  work_wdt; int /*<<< orphan*/  enable_refcount; int /*<<< orphan*/  pending_list; int /*<<< orphan*/ * check_status; scalar_t__* batch_opt_buf; scalar_t__* batch_latency_buf; } ;
struct spi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  SPI_MODE_1 ; 
 size_t SSP_BIO_HRM_LIB ; 
 int SSP_DEFAULT_POLLING_DELAY ; 
 scalar_t__ SSP_FW_DL_STATE_NONE ; 
 int /*<<< orphan*/  SSP_INITIALIZATION_STATE ; 
 int SSP_SENSOR_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ssp_data*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct ssp_data*) ; 
 int /*<<< orphan*/  sensorhub_sensor_devs ; 
 int /*<<< orphan*/  FUNC12 (struct spi_device*,struct ssp_data*) ; 
 int FUNC13 (struct spi_device*) ; 
 scalar_t__ FUNC14 (struct ssp_data*) ; 
 int FUNC15 (struct ssp_data*) ; 
 int /*<<< orphan*/  ssp_irq_thread_fn ; 
 struct ssp_data* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssp_refresh_task ; 
 int /*<<< orphan*/  ssp_wdt_timer_func ; 
 int /*<<< orphan*/  ssp_wdt_work_func ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct spi_device *spi)
{
	int ret, i;
	struct ssp_data *data;

	data = FUNC16(&spi->dev);
	if (!data) {
		FUNC5(&spi->dev, "Failed to find platform data\n");
		return -ENODEV;
	}

	ret = FUNC8(&spi->dev, -1, sensorhub_sensor_devs,
			      FUNC0(sensorhub_sensor_devs), NULL, 0, NULL);
	if (ret < 0) {
		FUNC5(&spi->dev, "mfd add devices fail\n");
		return ret;
	}

	spi->mode = SPI_MODE_1;
	ret = FUNC13(spi);
	if (ret < 0) {
		FUNC5(&spi->dev, "Failed to setup spi\n");
		return ret;
	}

	data->fw_dl_state = SSP_FW_DL_STATE_NONE;
	data->spi = spi;
	FUNC12(spi, data);

	FUNC10(&data->comm_lock);

	for (i = 0; i < SSP_SENSOR_MAX; ++i) {
		data->delay_buf[i] = SSP_DEFAULT_POLLING_DELAY;
		data->batch_latency_buf[i] = 0;
		data->batch_opt_buf[i] = 0;
		data->check_status[i] = SSP_INITIALIZATION_STATE;
	}

	data->delay_buf[SSP_BIO_HRM_LIB] = 100;

	data->time_syncing = true;

	FUNC10(&data->pending_lock);
	FUNC2(&data->pending_list);

	FUNC4(&data->enable_refcount, 0);

	FUNC3(&data->work_wdt, ssp_wdt_work_func);
	FUNC1(&data->work_refresh, ssp_refresh_task);

	FUNC17(&data->wdt_timer, ssp_wdt_timer_func, 0);

	ret = FUNC11(data->spi->irq, NULL,
				   ssp_irq_thread_fn,
				   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
				   "SSP_Int", data);
	if (ret < 0) {
		FUNC5(&spi->dev, "Irq request fail\n");
		goto err_setup_irq;
	}

	/* Let's start with enabled one so irq balance could be ok */
	data->shut_down = false;

	/* just to avoid unbalanced irq set wake up */
	FUNC6(data->spi->irq);

	data->fw_dl_state = FUNC14(data);
	if (data->fw_dl_state == SSP_FW_DL_STATE_NONE) {
		ret = FUNC15(data);
		if (ret < 0) {
			FUNC5(&spi->dev, "Initialize_mcu failed\n");
			goto err_read_reg;
		}
	} else {
		FUNC5(&spi->dev, "Firmware version not supported\n");
		ret = -EPERM;
		goto err_read_reg;
	}

	return 0;

err_read_reg:
	FUNC7(data->spi->irq, data);
err_setup_irq:
	FUNC9(&data->pending_lock);
	FUNC9(&data->comm_lock);

	FUNC5(&spi->dev, "Probe failed!\n");

	return ret;
}