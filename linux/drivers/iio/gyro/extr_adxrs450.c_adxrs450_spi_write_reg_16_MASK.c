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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct iio_dev {int dummy; } ;
struct adxrs450_state {int /*<<< orphan*/  buf_lock; TYPE_1__* us; int /*<<< orphan*/  tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADXRS450_P ; 
 int ADXRS450_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int) ; 
 struct adxrs450_state* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct iio_dev *indio_dev,
				     u8 reg_address,
				     u16 val)
{
	struct adxrs450_state *st = FUNC3(indio_dev);
	u32 tx;
	int ret;

	FUNC4(&st->buf_lock);
	tx = ADXRS450_WRITE_DATA | (reg_address << 17) | (val << 1);

	if (!(FUNC2(tx) & 1))
		tx |= ADXRS450_P;

	st->tx = FUNC0(tx);
	ret = FUNC6(st->us, &st->tx, sizeof(st->tx));
	if (ret)
		FUNC1(&st->us->dev, "problem while writing 16 bit register 0x%02x\n",
			reg_address);
	FUNC7(100, 1000); /* enforce sequential transfer delay 0.1ms */
	FUNC5(&st->buf_lock);
	return ret;
}