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
struct adis {TYPE_2__* spi; TYPE_1__* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  startup_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adis*) ; 
 int FUNC1 (struct adis*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct adis *adis)
{
	int ret;

	ret = FUNC1(adis);
	if (ret) {
		FUNC2(&adis->spi->dev, "Self-test failed, trying reset.\n");
		FUNC0(adis);
		FUNC3(adis->data->startup_delay);
		ret = FUNC1(adis);
		if (ret) {
			FUNC2(&adis->spi->dev, "Second self-test failed, giving up.\n");
			return ret;
		}
	}

	return 0;
}