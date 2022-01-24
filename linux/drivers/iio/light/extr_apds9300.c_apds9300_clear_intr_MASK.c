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
struct apds9300_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int APDS9300_CLEAR ; 
 int APDS9300_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(struct apds9300_data *data)
{
	int ret;

	ret = FUNC1(data->client, APDS9300_CLEAR | APDS9300_CMD);
	if (ret < 0)
		FUNC0(&data->client->dev, "failed to clear interrupt\n");
}