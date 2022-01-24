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
struct sa_path_rec {int reversible; scalar_t__ packet_life_time; void* packet_life_time_selector; int /*<<< orphan*/  rate; void* rate_selector; int /*<<< orphan*/  mtu; void* mtu_selector; int /*<<< orphan*/  sl; int /*<<< orphan*/  pkey; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;
struct cm_lap_msg {int /*<<< orphan*/  alt_hop_limit; int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; } ;
struct cm_id_private {int /*<<< orphan*/  path_mtu; int /*<<< orphan*/  pkey; } ;

/* Variables and functions */
 void* IB_SA_EQ ; 
 int /*<<< orphan*/  FUNC0 (struct cm_lap_msg*,struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_lap_msg*) ; 
 scalar_t__ FUNC2 (struct cm_lap_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_lap_msg*) ; 
 int /*<<< orphan*/  FUNC4 (struct cm_lap_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_lap_msg*) ; 

__attribute__((used)) static void FUNC6(struct cm_id_private *cm_id_priv,
				    struct sa_path_rec *path,
				    struct cm_lap_msg *lap_msg)
{
	path->dgid = lap_msg->alt_local_gid;
	path->sgid = lap_msg->alt_remote_gid;
	path->flow_label = FUNC1(lap_msg);
	path->hop_limit = lap_msg->alt_hop_limit;
	path->traffic_class = FUNC5(lap_msg);
	path->reversible = 1;
	path->pkey = cm_id_priv->pkey;
	path->sl = FUNC4(lap_msg);
	path->mtu_selector = IB_SA_EQ;
	path->mtu = cm_id_priv->path_mtu;
	path->rate_selector = IB_SA_EQ;
	path->rate = FUNC3(lap_msg);
	path->packet_life_time_selector = IB_SA_EQ;
	path->packet_life_time = FUNC2(lap_msg);
	path->packet_life_time -= (path->packet_life_time > 0);
	FUNC0(lap_msg, path);
}