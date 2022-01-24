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
struct us5182d_data {scalar_t__ power_mode; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ US5182D_ONESHOT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct us5182d_data *data, bool on)
{
	int ret;

	if (data->power_mode == US5182D_ONESHOT)
		return 0;

	if (on) {
		ret = FUNC0(&data->client->dev);
		if (ret < 0)
			FUNC3(&data->client->dev);
	} else {
		FUNC1(&data->client->dev);
		ret = FUNC2(&data->client->dev);
	}

	return ret;
}