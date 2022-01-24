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
struct kmx61_data {TYPE_1__* client; int /*<<< orphan*/  wake_thresh; int /*<<< orphan*/  wake_duration; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMX61_REG_WUF_THRESH ; 
 int /*<<< orphan*/  KMX61_REG_WUF_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct kmx61_data *data)
{
	int ret;

	ret = FUNC1(data->client,
					KMX61_REG_WUF_TIMER,
					data->wake_duration);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Errow writing reg_wuf_timer\n");
		return ret;
	}

	ret = FUNC1(data->client,
					KMX61_REG_WUF_THRESH,
					data->wake_thresh);
	if (ret < 0)
		FUNC0(&data->client->dev, "Error writing reg_wuf_thresh\n");

	return ret;
}