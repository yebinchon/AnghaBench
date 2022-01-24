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
typedef  int /*<<< orphan*/  u8 ;
struct gb_host_device {int /*<<< orphan*/  dev; struct gb_hd_driver* driver; } ;
struct gb_hd_driver {int (* cport_shutdown ) (struct gb_host_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct gb_connection {int /*<<< orphan*/  name; int /*<<< orphan*/  hd_cport_id; struct gb_host_device* hd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_OPERATION_TIMEOUT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct gb_connection*) ; 
 scalar_t__ FUNC2 (struct gb_connection*) ; 
 int FUNC3 (struct gb_connection*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gb_host_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gb_connection *connection,
					u8 phase)
{
	struct gb_host_device *hd = connection->hd;
	const struct gb_hd_driver *drv = hd->driver;
	int ret;

	if (FUNC2(connection))
		return 0;

	if (FUNC1(connection)) {
		if (!drv->cport_shutdown)
			return 0;

		ret = drv->cport_shutdown(hd, connection->hd_cport_id, phase,
					  GB_OPERATION_TIMEOUT_DEFAULT);
	} else {
		ret = FUNC3(connection, phase);
	}

	if (ret) {
		FUNC0(&hd->dev, "%s: failed to send cport shutdown (phase %d): %d\n",
			connection->name, phase, ret);
		return ret;
	}

	return 0;
}