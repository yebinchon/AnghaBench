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
struct steam_device {int connected; int client_opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct hid_device {struct steam_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  lizard_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct steam_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct steam_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hdev)
{
	struct steam_device *steam = hdev->driver_data;

	unsigned long flags;
	bool connected;

	FUNC2(&steam->lock, flags);
	connected = steam->connected;
	FUNC3(&steam->lock, flags);

	FUNC0(&steam->mutex);
	steam->client_opened = false;
	if (connected)
		FUNC5(steam, lizard_mode);
	FUNC1(&steam->mutex);

	if (connected)
		FUNC4(steam);
}