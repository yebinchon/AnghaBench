#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct steam_device {int /*<<< orphan*/  mutex; int /*<<< orphan*/  client_opened; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct steam_device* FUNC0 (struct input_dev*) ; 
 scalar_t__ lizard_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct steam_device*,int) ; 

__attribute__((used)) static void FUNC4(struct input_dev *dev)
{
	struct steam_device *steam = FUNC0(dev);

	FUNC1(&steam->mutex);
	if (!steam->client_opened && lizard_mode)
		FUNC3(steam, true);
	FUNC2(&steam->mutex);
}