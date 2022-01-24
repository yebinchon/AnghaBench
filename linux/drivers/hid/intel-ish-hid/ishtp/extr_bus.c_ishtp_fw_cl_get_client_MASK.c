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
struct TYPE_2__ {scalar_t__ fixed_address; } ;
struct ishtp_fw_client {TYPE_1__ props; } ;
struct ishtp_device {struct ishtp_fw_client* fw_clients; int /*<<< orphan*/  fw_clients_lock; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int FUNC0 (struct ishtp_device*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ishtp_fw_client *FUNC3(struct ishtp_device *dev,
					       const guid_t *uuid)
{
	int i;
	unsigned long flags;

	FUNC1(&dev->fw_clients_lock, flags);
	i = FUNC0(dev, uuid);
	FUNC2(&dev->fw_clients_lock, flags);
	if (i < 0 || dev->fw_clients[i].props.fixed_address)
		return NULL;

	return &dev->fw_clients[i];
}