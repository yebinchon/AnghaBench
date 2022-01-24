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
struct input_dev {int dummy; } ;
struct icn8318_data {int /*<<< orphan*/  wake_gpio; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICN8318_POWER_HIBERNATE ; 
 int /*<<< orphan*/  ICN8318_REG_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct icn8318_data* FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct input_dev *dev)
{
	struct icn8318_data *data = FUNC3(dev);

	FUNC0(data->client->irq);
	FUNC2(data->client, ICN8318_REG_POWER,
				  ICN8318_POWER_HIBERNATE);
	FUNC1(data->wake_gpio, 0);
}