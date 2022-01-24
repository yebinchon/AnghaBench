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
struct bma180_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bma180_data*,int) ; 
 scalar_t__ FUNC1 (struct bma180_data*,int) ; 
 scalar_t__ FUNC2 (struct bma180_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(struct bma180_data *data)
{
	if (FUNC1(data, false))
		goto err;
	if (FUNC0(data, false))
		goto err;
	if (FUNC2(data, true))
		goto err;

	return;

err:
	FUNC3(&data->client->dev, "failed to disable the chip\n");
}