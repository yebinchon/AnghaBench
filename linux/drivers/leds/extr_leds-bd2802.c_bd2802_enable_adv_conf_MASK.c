#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct bd2802_led {int adf_on; TYPE_2__* client; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__**) ; 
 TYPE_3__** bd2802_addr_attributes ; 
 scalar_t__ FUNC1 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC2 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct bd2802_led *led)
{
	int i, ret;

	for (i = 0; i < FUNC0(bd2802_addr_attributes); i++) {
		ret = FUNC4(&led->client->dev,
						bd2802_addr_attributes[i]);
		if (ret) {
			FUNC3(&led->client->dev, "failed: sysfs file %s\n",
					bd2802_addr_attributes[i]->attr.name);
			goto failed_remove_files;
		}
	}

	if (FUNC1(led))
		FUNC2(led);

	led->adf_on = 1;

	return;

failed_remove_files:
	for (i--; i >= 0; i--)
		FUNC5(&led->client->dev,
						bd2802_addr_attributes[i]);
}