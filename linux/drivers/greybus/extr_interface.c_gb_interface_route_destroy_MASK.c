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
struct gb_svc {int /*<<< orphan*/  device_id_map; int /*<<< orphan*/  ap_intf_id; } ;
struct gb_interface {int /*<<< orphan*/  device_id; int /*<<< orphan*/  interface_id; TYPE_1__* hd; } ;
struct TYPE_2__ {struct gb_svc* svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_INTERFACE_DEVICE_ID_BAD ; 
 int /*<<< orphan*/  FUNC0 (struct gb_svc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gb_interface *intf)
{
	struct gb_svc *svc = intf->hd->svc;

	if (intf->device_id == GB_INTERFACE_DEVICE_ID_BAD)
		return;

	FUNC0(svc, svc->ap_intf_id, intf->interface_id);
	FUNC1(&svc->device_id_map, intf->device_id);
	intf->device_id = GB_INTERFACE_DEVICE_ID_BAD;
}