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
struct s6sy761_data {TYPE_1__* client; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  S6SY761_SENSE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct s6sy761_data* FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct s6sy761_data *sdata = FUNC2(dev);
	int ret;

	ret = FUNC1(sdata->client, S6SY761_SENSE_OFF);
	if (ret)
		FUNC0(&sdata->client->dev, "failed to turn off sensing\n");
}