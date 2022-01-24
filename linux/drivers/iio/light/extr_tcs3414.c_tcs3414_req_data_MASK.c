#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcs3414_data {int control; TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TCS3414_CONTROL ; 
 int TCS3414_CONTROL_ADC_EN ; 
 int TCS3414_CONTROL_ADC_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tcs3414_data *data)
{
	int tries = 25;
	int ret;

	ret = FUNC2(data->client, TCS3414_CONTROL,
		data->control | TCS3414_CONTROL_ADC_EN);
	if (ret < 0)
		return ret;

	while (tries--) {
		ret = FUNC1(data->client, TCS3414_CONTROL);
		if (ret < 0)
			return ret;
		if (ret & TCS3414_CONTROL_ADC_VALID)
			break;
		FUNC3(20);
	}

	ret = FUNC2(data->client, TCS3414_CONTROL,
		data->control);
	if (ret < 0)
		return ret;

	if (tries < 0) {
		FUNC0(&data->client->dev, "data not ready\n");
		return -EIO;
	}

	return 0;
}