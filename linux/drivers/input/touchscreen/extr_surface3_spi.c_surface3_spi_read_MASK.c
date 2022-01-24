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
struct surface3_ts_data {int /*<<< orphan*/  rd_buf; struct spi_device* spi; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct surface3_ts_data *ts_data)
{
	struct spi_device *spi = ts_data->spi;

	FUNC0(ts_data->rd_buf, 0, sizeof(ts_data->rd_buf));
	return FUNC1(spi, ts_data->rd_buf, sizeof(ts_data->rd_buf));
}