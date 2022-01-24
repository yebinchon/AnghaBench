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
struct TYPE_2__ {int route_resolved; } ;
struct sa_path_rec {int reversible; scalar_t__ packet_life_time; TYPE_1__ roce; int /*<<< orphan*/  service_id; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; void* mtu; void* mtu_selector; int /*<<< orphan*/  sl; int /*<<< orphan*/  pkey; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;
struct cm_req_msg {int /*<<< orphan*/  service_id; int /*<<< orphan*/  pkey; int /*<<< orphan*/  alt_traffic_class; int /*<<< orphan*/  alt_hop_limit; int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; int /*<<< orphan*/  primary_traffic_class; int /*<<< orphan*/  primary_hop_limit; int /*<<< orphan*/  primary_remote_gid; int /*<<< orphan*/  primary_local_gid; } ;

/* Variables and functions */
 void* IB_SA_EQ ; 
 int /*<<< orphan*/  FUNC0 (struct cm_req_msg*,struct sa_path_rec*,struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_req_msg*) ; 
 scalar_t__ FUNC2 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_req_msg*) ; 
 void* FUNC5 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_req_msg*) ; 
 scalar_t__ FUNC7 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct cm_req_msg*) ; 
 scalar_t__ FUNC10 (struct cm_req_msg*) ; 
 scalar_t__ FUNC11 (struct sa_path_rec*) ; 

__attribute__((used)) static void FUNC12(struct cm_req_msg *req_msg,
				     struct sa_path_rec *primary_path,
				     struct sa_path_rec *alt_path)
{
	primary_path->dgid = req_msg->primary_local_gid;
	primary_path->sgid = req_msg->primary_remote_gid;
	primary_path->flow_label = FUNC6(req_msg);
	primary_path->hop_limit = req_msg->primary_hop_limit;
	primary_path->traffic_class = req_msg->primary_traffic_class;
	primary_path->reversible = 1;
	primary_path->pkey = req_msg->pkey;
	primary_path->sl = FUNC9(req_msg);
	primary_path->mtu_selector = IB_SA_EQ;
	primary_path->mtu = FUNC5(req_msg);
	primary_path->rate_selector = IB_SA_EQ;
	primary_path->rate = FUNC8(req_msg);
	primary_path->packet_life_time_selector = IB_SA_EQ;
	primary_path->packet_life_time =
		FUNC7(req_msg);
	primary_path->packet_life_time -= (primary_path->packet_life_time > 0);
	primary_path->service_id = req_msg->service_id;
	if (FUNC11(primary_path))
		primary_path->roce.route_resolved = false;

	if (FUNC10(req_msg)) {
		alt_path->dgid = req_msg->alt_local_gid;
		alt_path->sgid = req_msg->alt_remote_gid;
		alt_path->flow_label = FUNC1(req_msg);
		alt_path->hop_limit = req_msg->alt_hop_limit;
		alt_path->traffic_class = req_msg->alt_traffic_class;
		alt_path->reversible = 1;
		alt_path->pkey = req_msg->pkey;
		alt_path->sl = FUNC4(req_msg);
		alt_path->mtu_selector = IB_SA_EQ;
		alt_path->mtu = FUNC5(req_msg);
		alt_path->rate_selector = IB_SA_EQ;
		alt_path->rate = FUNC3(req_msg);
		alt_path->packet_life_time_selector = IB_SA_EQ;
		alt_path->packet_life_time =
			FUNC2(req_msg);
		alt_path->packet_life_time -= (alt_path->packet_life_time > 0);
		alt_path->service_id = req_msg->service_id;

		if (FUNC11(alt_path))
			alt_path->roce.route_resolved = false;
	}
	FUNC0(req_msg, primary_path, alt_path);
}