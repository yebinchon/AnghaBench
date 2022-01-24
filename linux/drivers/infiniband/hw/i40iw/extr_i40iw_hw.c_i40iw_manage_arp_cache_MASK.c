#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {int /*<<< orphan*/  sc_cqp; } ;
struct i40iw_device {TYPE_5__ cqp; } ;
struct i40iw_add_arp_cache_entry_info {int permanent; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  arp_index; } ;
struct TYPE_7__ {uintptr_t scratch; int /*<<< orphan*/ * cqp; struct i40iw_add_arp_cache_entry_info info; } ;
struct TYPE_6__ {uintptr_t scratch; int arp_index; int /*<<< orphan*/ * cqp; } ;
struct TYPE_8__ {TYPE_2__ add_arp_cache_entry; TYPE_1__ del_arp_cache_entry; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_4__ in; int /*<<< orphan*/  cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;

/* Variables and functions */
 scalar_t__ I40IW_ARP_ADD ; 
 int /*<<< orphan*/  OP_ADD_ARP_CACHE_ENTRY ; 
 int /*<<< orphan*/  OP_DELETE_ARP_CACHE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (struct i40iw_device*,scalar_t__*,int,unsigned char*,scalar_t__) ; 
 struct i40iw_cqp_request* FUNC3 (TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (struct i40iw_device*,struct i40iw_cqp_request*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40iw_add_arp_cache_entry_info*,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct i40iw_device *iwdev,
			    unsigned char *mac_addr,
			    u32 *ip_addr,
			    bool ipv4,
			    u32 action)
{
	struct i40iw_add_arp_cache_entry_info *info;
	struct i40iw_cqp_request *cqp_request;
	struct cqp_commands_info *cqp_info;
	int arp_index;

	arp_index = FUNC2(iwdev, ip_addr, ipv4, mac_addr, action);
	if (arp_index == -1)
		return;
	cqp_request = FUNC3(&iwdev->cqp, false);
	if (!cqp_request)
		return;

	cqp_info = &cqp_request->info;
	if (action == I40IW_ARP_ADD) {
		cqp_info->cqp_cmd = OP_ADD_ARP_CACHE_ENTRY;
		info = &cqp_info->in.u.add_arp_cache_entry.info;
		FUNC6(info, 0, sizeof(*info));
		info->arp_index = FUNC0((u16)arp_index);
		info->permanent = true;
		FUNC1(info->mac_addr, mac_addr);
		cqp_info->in.u.add_arp_cache_entry.scratch = (uintptr_t)cqp_request;
		cqp_info->in.u.add_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
	} else {
		cqp_info->cqp_cmd = OP_DELETE_ARP_CACHE_ENTRY;
		cqp_info->in.u.del_arp_cache_entry.scratch = (uintptr_t)cqp_request;
		cqp_info->in.u.del_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
		cqp_info->in.u.del_arp_cache_entry.arp_index = arp_index;
	}

	cqp_info->in.u.add_arp_cache_entry.cqp = &iwdev->cqp.sc_cqp;
	cqp_info->in.u.add_arp_cache_entry.scratch = (uintptr_t)cqp_request;
	cqp_info->post_sq = 1;
	if (FUNC4(iwdev, cqp_request))
		FUNC5("CQP-OP Add/Del Arp Cache entry fail");
}