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
struct gpio_desc {int dummy; } ;
struct ad5272_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5272_RESET ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ad5272_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ad5272_data *data)
{
	struct gpio_desc *reset_gpio;

	reset_gpio = FUNC3(&data->client->dev, "reset",
		GPIOD_OUT_LOW);
	if (FUNC0(reset_gpio))
		return FUNC1(reset_gpio);

	if (reset_gpio) {
		FUNC5(1);
		FUNC4(reset_gpio, 1);
	} else {
		FUNC2(data, AD5272_RESET, 0);
	}
	FUNC6(1000, 2000);

	return 0;
}