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
struct bma150_data {scalar_t__ mode; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BMA150_MODE_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (struct bma150_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bma150_data *bma150)
{
	FUNC1(&bma150->client->dev);

	if (bma150->mode != BMA150_MODE_SLEEP)
		FUNC0(bma150, BMA150_MODE_SLEEP);
}