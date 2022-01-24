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
struct steam_device {int quirks; int client_opened; int /*<<< orphan*/  mutex; int /*<<< orphan*/  list; int /*<<< orphan*/ * serial_no; int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int STEAM_QUIRK_WIRELESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lizard_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct steam_device*) ; 
 int /*<<< orphan*/  steam_devices ; 
 int /*<<< orphan*/  steam_devices_lock ; 
 scalar_t__ FUNC5 (struct steam_device*) ; 
 int FUNC6 (struct steam_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct steam_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(struct steam_device *steam)
{
	int ret;
	bool client_opened;

	/*
	 * This function can be called several times in a row with the
	 * wireless adaptor, without steam_unregister() between them, because
	 * another client send a get_connection_status command, for example.
	 * The battery and serial number are set just once per device.
	 */
	if (!steam->serial_no[0]) {
		/*
		 * Unlikely, but getting the serial could fail, and it is not so
		 * important, so make up a serial number and go on.
		 */
		FUNC2(&steam->mutex);
		if (FUNC5(steam) < 0)
			FUNC8(steam->serial_no, "XXXXXXXXXX",
					sizeof(steam->serial_no));
		FUNC3(&steam->mutex);

		FUNC0(steam->hdev, "Steam Controller '%s' connected",
				steam->serial_no);

		/* ignore battery errors, we can live without it */
		if (steam->quirks & STEAM_QUIRK_WIRELESS)
			FUNC4(steam);

		FUNC2(&steam_devices_lock);
		FUNC1(&steam->list, &steam_devices);
		FUNC3(&steam_devices_lock);
	}

	FUNC2(&steam->mutex);
	client_opened = steam->client_opened;
	if (!client_opened)
		FUNC7(steam, lizard_mode);
	FUNC3(&steam->mutex);

	if (!client_opened)
		ret = FUNC6(steam);
	else
		ret = 0;

	return ret;
}