#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct spi_device {TYPE_2__ dev; } ;
struct ads7846 {struct ads7846* packet; int /*<<< orphan*/  filter_data; int /*<<< orphan*/  (* filter_cleanup ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  gpio_pendown; int /*<<< orphan*/  get_pendown_state; int /*<<< orphan*/  reg; int /*<<< orphan*/  input; TYPE_1__* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  ads784x_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,struct ads7846*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ads7846*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ads7846* FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct spi_device *spi)
{
	struct ads7846 *ts = FUNC8(spi);

	FUNC10(&spi->dev.kobj, &ads784x_attr_group);

	FUNC0(ts);
	FUNC3(ts->spi->irq, ts);

	FUNC5(ts->input);

	FUNC1(spi, ts);

	FUNC7(ts->reg);

	if (!ts->get_pendown_state) {
		/*
		 * If we are not using specialized pendown method we must
		 * have been relying on gpio we set up ourselves.
		 */
		FUNC4(ts->gpio_pendown);
	}

	if (ts->filter_cleanup)
		ts->filter_cleanup(ts->filter_data);

	FUNC6(ts->packet);
	FUNC6(ts);

	FUNC2(&spi->dev, "unregistered touchscreen\n");

	return 0;
}