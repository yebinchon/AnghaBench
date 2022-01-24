#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint16_t ;
struct iio_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_2__* spi; } ;
struct adis16400_state {TYPE_3__ adis; TYPE_1__* variant; } ;
struct TYPE_6__ {void* max_speed_hz; int /*<<< orphan*/  irq; int /*<<< orphan*/  chip_select; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int ADIS16400_HAS_PROD_ID ; 
 int ADIS16400_HAS_SLOW_MODE ; 
 int /*<<< orphan*/  ADIS16400_PRODUCT_ID ; 
 int /*<<< orphan*/  ADIS16400_SMPL_PRD ; 
 unsigned int ADIS16400_SMPL_PRD_DIV_MASK ; 
 void* ADIS16400_SPI_FAST ; 
 void* ADIS16400_SPI_SLOW ; 
 int EINVAL ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int) ; 
 struct adis16400_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev)
{
	struct adis16400_state *st = FUNC4(indio_dev);
	uint16_t prod_id, smp_prd;
	unsigned int device_id;
	int ret;

	/* use low spi speed for init if the device has a slow mode */
	if (st->variant->flags & ADIS16400_HAS_SLOW_MODE)
		st->adis.spi->max_speed_hz = ADIS16400_SPI_SLOW;
	else
		st->adis.spi->max_speed_hz = ADIS16400_SPI_FAST;
	st->adis.spi->mode = SPI_MODE_3;
	FUNC5(st->adis.spi);

	ret = FUNC0(&st->adis);
	if (ret)
		return ret;

	if (st->variant->flags & ADIS16400_HAS_PROD_ID) {
		ret = FUNC1(&st->adis,
						ADIS16400_PRODUCT_ID, &prod_id);
		if (ret)
			goto err_ret;

		ret = FUNC6(indio_dev->name, "adis%u\n", &device_id);
		if (ret != 1) {
			ret = -EINVAL;
			goto err_ret;
		}

		if (prod_id != device_id)
			FUNC3(&indio_dev->dev, "Device ID(%u) and product ID(%u) do not match.",
					device_id, prod_id);

		FUNC2(&indio_dev->dev, "%s: prod_id 0x%04x at CS%d (irq %d)\n",
			indio_dev->name, prod_id,
			st->adis.spi->chip_select, st->adis.spi->irq);
	}
	/* use high spi speed if possible */
	if (st->variant->flags & ADIS16400_HAS_SLOW_MODE) {
		ret = FUNC1(&st->adis, ADIS16400_SMPL_PRD, &smp_prd);
		if (ret)
			goto err_ret;

		if ((smp_prd & ADIS16400_SMPL_PRD_DIV_MASK) < 0x0A) {
			st->adis.spi->max_speed_hz = ADIS16400_SPI_FAST;
			FUNC5(st->adis.spi);
		}
	}

err_ret:
	return ret;
}