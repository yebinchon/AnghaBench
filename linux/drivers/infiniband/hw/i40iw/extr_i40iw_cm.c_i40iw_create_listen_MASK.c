#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_8__ {TYPE_2__ in6_u; } ;
struct sockaddr_in6 {TYPE_4__ sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct iw_cm_id {int /*<<< orphan*/  (* add_ref ) (struct iw_cm_id*) ;int /*<<< orphan*/  tos; struct i40iw_cm_listener* provider_data; int /*<<< orphan*/  m_local_addr; int /*<<< orphan*/  device; } ;
struct i40iw_device {int /*<<< orphan*/  cm_core; } ;
struct i40iw_cm_listener {int qhash_set; TYPE_3__* cm_core; int /*<<< orphan*/  reused_node; int /*<<< orphan*/  user_pri; int /*<<< orphan*/  tos; } ;
struct i40iw_cm_info {int ipv4; int backlog; void* loc_port; int /*<<< orphan*/  user_pri; struct iw_cm_id* cm_id; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/ * loc_addr; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
typedef  int /*<<< orphan*/  cm_info ;
struct TYPE_7__ {int /*<<< orphan*/  stats_listen_created; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I40IW_MANAGE_APBVT_ADD ; 
 int /*<<< orphan*/  I40IW_QHASH_MANAGE_TYPE_ADD ; 
 int /*<<< orphan*/  I40IW_QHASH_TYPE_TCP_SYN ; 
 scalar_t__ INADDR_ANY ; 
 scalar_t__ IPV6_ADDR_ANY ; 
 int FUNC0 (struct i40iw_device*,struct i40iw_cm_info*,struct i40iw_cm_listener*) ; 
 int FUNC1 (struct i40iw_device*,struct i40iw_cm_info*,struct i40iw_cm_listener*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct i40iw_cm_listener* FUNC5 (int /*<<< orphan*/ *,struct i40iw_device*,struct i40iw_cm_info*) ; 
 int FUNC6 (struct i40iw_device*,void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i40iw_device*,struct i40iw_cm_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (struct i40iw_cm_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct iw_cm_id*) ; 
 struct i40iw_device* FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct iw_cm_id *cm_id, int backlog)
{
	struct i40iw_device *iwdev;
	struct i40iw_cm_listener *cm_listen_node;
	struct i40iw_cm_info cm_info;
	enum i40iw_status_code ret;
	struct sockaddr_in *laddr;
	struct sockaddr_in6 *laddr6;
	bool wildcard = false;

	iwdev = FUNC16(cm_id->device);
	if (!iwdev)
		return -EINVAL;

	laddr = (struct sockaddr_in *)&cm_id->m_local_addr;
	laddr6 = (struct sockaddr_in6 *)&cm_id->m_local_addr;
	FUNC11(&cm_info, 0, sizeof(cm_info));
	if (laddr->sin_family == AF_INET) {
		cm_info.ipv4 = true;
		cm_info.loc_addr[0] = FUNC12(laddr->sin_addr.s_addr);
		cm_info.loc_port = FUNC13(laddr->sin_port);

		if (laddr->sin_addr.s_addr != INADDR_ANY)
			cm_info.vlan_id = FUNC4(cm_info.loc_addr);
		else
			wildcard = true;

	} else {
		cm_info.ipv4 = false;
		FUNC3(cm_info.loc_addr,
				    laddr6->sin6_addr.in6_u.u6_addr32);
		cm_info.loc_port = FUNC13(laddr6->sin6_port);
		if (FUNC10(&laddr6->sin6_addr) != IPV6_ADDR_ANY)
			FUNC8(cm_info.loc_addr,
					       &cm_info.vlan_id);
		else
			wildcard = true;
	}
	cm_info.backlog = backlog;
	cm_info.cm_id = cm_id;

	cm_listen_node = FUNC5(&iwdev->cm_core, iwdev, &cm_info);
	if (!cm_listen_node) {
		FUNC9("cm_listen_node == NULL\n");
		return -ENOMEM;
	}

	cm_id->provider_data = cm_listen_node;

	cm_listen_node->tos = cm_id->tos;
	cm_listen_node->user_pri = FUNC14(cm_id->tos);
	cm_info.user_pri = cm_listen_node->user_pri;

	if (!cm_listen_node->reused_node) {
		if (wildcard) {
			if (cm_info.ipv4)
				ret = FUNC0(iwdev,
						      &cm_info,
						      cm_listen_node);
			else
				ret = FUNC1(iwdev,
						      &cm_info,
						      cm_listen_node);
			if (ret)
				goto error;

			ret = FUNC6(iwdev,
						 cm_info.loc_port,
						 I40IW_MANAGE_APBVT_ADD);

			if (ret)
				goto error;
		} else {
			ret = FUNC7(iwdev,
						 &cm_info,
						 I40IW_QHASH_TYPE_TCP_SYN,
						 I40IW_QHASH_MANAGE_TYPE_ADD,
						 NULL,
						 true);
			if (ret)
				goto error;
			cm_listen_node->qhash_set = true;
			ret = FUNC6(iwdev,
						 cm_info.loc_port,
						 I40IW_MANAGE_APBVT_ADD);
			if (ret)
				goto error;
		}
	}
	cm_id->add_ref(cm_id);
	cm_listen_node->cm_core->stats_listen_created++;
	return 0;
 error:
	FUNC2(&iwdev->cm_core, (void *)cm_listen_node, false);
	return -EINVAL;
}