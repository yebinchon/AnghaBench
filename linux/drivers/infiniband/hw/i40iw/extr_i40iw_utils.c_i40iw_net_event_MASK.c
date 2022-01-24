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
typedef  int /*<<< orphan*/  u32 ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; scalar_t__ primary_key; scalar_t__ dev; } ;
struct i40iw_device {int /*<<< orphan*/  closing; int /*<<< orphan*/  init_state; } ;
struct i40iw_handler {struct i40iw_device device; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_ARP_ADD ; 
 int /*<<< orphan*/  I40IW_ARP_DELETE ; 
 int /*<<< orphan*/  IP_ADDR_REGISTERED ; 
#define  NETEVENT_NEIGH_UPDATE 128 
 int NOTIFY_DONE ; 
 int NUD_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct i40iw_handler* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct notifier_block *notifier, unsigned long event, void *ptr)
{
	struct neighbour *neigh = ptr;
	struct i40iw_device *iwdev;
	struct i40iw_handler *iwhdl;
	__be32 *p;
	u32 local_ipaddr[4];

	switch (event) {
	case NETEVENT_NEIGH_UPDATE:
		iwhdl = FUNC1((struct net_device *)neigh->dev);
		if (!iwhdl)
			return NOTIFY_DONE;
		iwdev = &iwhdl->device;
		if (iwdev->init_state < IP_ADDR_REGISTERED || iwdev->closing)
			return NOTIFY_DONE;
		p = (__be32 *)neigh->primary_key;
		FUNC0(local_ipaddr, p);
		if (neigh->nud_state & NUD_VALID) {
			FUNC2(iwdev,
					       neigh->ha,
					       local_ipaddr,
					       false,
					       I40IW_ARP_ADD);

		} else {
			FUNC2(iwdev,
					       neigh->ha,
					       local_ipaddr,
					       false,
					       I40IW_ARP_DELETE);
		}
		break;
	default:
		break;
	}
	return NOTIFY_DONE;
}