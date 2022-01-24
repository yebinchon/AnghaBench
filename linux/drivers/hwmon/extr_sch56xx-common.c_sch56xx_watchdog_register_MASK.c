#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int timeout; int min_timeout; int max_timeout; int /*<<< orphan*/  status; struct device* parent; int /*<<< orphan*/ * ops; TYPE_1__* info; } ;
struct TYPE_4__ {int options; int /*<<< orphan*/  firmware_version; int /*<<< orphan*/  identity; } ;
struct sch56xx_watchdog_data {int watchdog_preset; int watchdog_control; int watchdog_output_enable; TYPE_2__ wddev; TYPE_1__ wdinfo; struct mutex* io_lock; int /*<<< orphan*/  addr; } ;
struct mutex {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCH56XX_REG_WDOG_CONTROL ; 
 int /*<<< orphan*/  SCH56XX_REG_WDOG_OUTPUT_ENABLE ; 
 int SCH56XX_WDOG_OUTPUT_ENABLE ; 
 int SCH56XX_WDOG_TIME_BASE_SEC ; 
 int WDIOF_KEEPALIVEPING ; 
 int WDIOF_MAGICCLOSE ; 
 int WDIOF_SETTIMEOUT ; 
 int /*<<< orphan*/  WDOG_ACTIVE ; 
 int /*<<< orphan*/  WDOG_NO_WAY_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct sch56xx_watchdog_data*) ; 
 struct sch56xx_watchdog_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 scalar_t__ nowayout ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  watchdog_ops ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct sch56xx_watchdog_data*) ; 

struct sch56xx_watchdog_data *FUNC11(struct device *parent,
	u16 addr, u32 revision, struct mutex *io_lock, int check_enabled)
{
	struct sch56xx_watchdog_data *data;
	int err, control, output_enable;

	/* Cache the watchdog registers */
	FUNC2(io_lock);
	control =
		FUNC6(addr, SCH56XX_REG_WDOG_CONTROL);
	output_enable =
		FUNC6(addr, SCH56XX_REG_WDOG_OUTPUT_ENABLE);
	FUNC3(io_lock);

	if (control < 0)
		return NULL;
	if (output_enable < 0)
		return NULL;
	if (check_enabled && !(output_enable & SCH56XX_WDOG_OUTPUT_ENABLE)) {
		FUNC5("Watchdog not enabled by BIOS, not registering\n");
		return NULL;
	}

	data = FUNC1(sizeof(struct sch56xx_watchdog_data), GFP_KERNEL);
	if (!data)
		return NULL;

	data->addr = addr;
	data->io_lock = io_lock;

	FUNC8(data->wdinfo.identity, "sch56xx watchdog",
		sizeof(data->wdinfo.identity));
	data->wdinfo.firmware_version = revision;
	data->wdinfo.options = WDIOF_KEEPALIVEPING | WDIOF_SETTIMEOUT;
	if (!nowayout)
		data->wdinfo.options |= WDIOF_MAGICCLOSE;

	data->wddev.info = &data->wdinfo;
	data->wddev.ops = &watchdog_ops;
	data->wddev.parent = parent;
	data->wddev.timeout = 60;
	data->wddev.min_timeout = 1;
	data->wddev.max_timeout = 255 * 60;
	if (nowayout)
		FUNC7(WDOG_NO_WAY_OUT, &data->wddev.status);
	if (output_enable & SCH56XX_WDOG_OUTPUT_ENABLE)
		FUNC7(WDOG_ACTIVE, &data->wddev.status);

	/* Since the watchdog uses a downcounter there is no register to read
	   the BIOS set timeout from (if any was set at all) ->
	   Choose a preset which will give us a 1 minute timeout */
	if (control & SCH56XX_WDOG_TIME_BASE_SEC)
		data->watchdog_preset = 60; /* seconds */
	else
		data->watchdog_preset = 1; /* minute */

	data->watchdog_control = control;
	data->watchdog_output_enable = output_enable;

	FUNC10(&data->wddev, data);
	err = FUNC9(&data->wddev);
	if (err) {
		FUNC4("Registering watchdog chardev: %d\n", err);
		FUNC0(data);
		return NULL;
	}

	return data;
}