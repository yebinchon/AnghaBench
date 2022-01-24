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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct i2c_par {TYPE_1__ adapter; struct i2c_client* ara; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC2(void *data)
{
	struct i2c_par *adapter = data;
	struct i2c_client *ara = adapter->ara;

	if (ara) {
		FUNC0(&ara->dev, "SMBus alert received\n");
		FUNC1(ara);
	} else
		FUNC0(&adapter->adapter.dev,
			"SMBus alert received but no ARA client!\n");
}