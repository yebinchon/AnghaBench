#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gb_connection {int /*<<< orphan*/  intf_cport_id; TYPE_2__* intf; int /*<<< orphan*/  hd_cport_id; TYPE_1__* hd; } ;
struct TYPE_6__ {int /*<<< orphan*/  ap_intf_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  interface_id; } ;
struct TYPE_4__ {TYPE_3__* svc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct gb_connection *connection)
{
	if (FUNC0(connection))
		return;

	FUNC1(connection->hd->svc,
				  connection->hd->svc->ap_intf_id,
				  connection->hd_cport_id,
				  connection->intf->interface_id,
				  connection->intf_cport_id);
}