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
struct stmfts_data {int running; TYPE_1__* client; scalar_t__ use_key; int /*<<< orphan*/  mutex; scalar_t__ hover_enabled; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMFTS_MS_KEY_SENSE_OFF ; 
 int /*<<< orphan*/  STMFTS_MS_MT_SENSE_OFF ; 
 int /*<<< orphan*/  STMFTS_SS_HOVER_SENSE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct stmfts_data* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct stmfts_data *sdata = FUNC2(dev);
	int err;

	err = FUNC1(sdata->client, STMFTS_MS_MT_SENSE_OFF);
	if (err)
		FUNC0(&sdata->client->dev,
			 "failed to disable touchscreen: %d\n", err);

	FUNC3(&sdata->mutex);

	sdata->running = false;

	if (sdata->hover_enabled) {
		err = FUNC1(sdata->client,
					   STMFTS_SS_HOVER_SENSE_OFF);
		if (err)
			FUNC0(&sdata->client->dev,
				 "failed to disable hover: %d\n", err);
	}
	FUNC4(&sdata->mutex);

	if (sdata->use_key) {
		err = FUNC1(sdata->client,
					   STMFTS_MS_KEY_SENSE_OFF);
		if (err)
			FUNC0(&sdata->client->dev,
				 "failed to disable touchkey: %d\n", err);
	}

	FUNC5(&sdata->client->dev);
}