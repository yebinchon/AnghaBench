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
struct sa_path_rec {scalar_t__ rec_type; } ;
struct cm_req_msg {int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; int /*<<< orphan*/  alt_remote_lid; int /*<<< orphan*/  alt_local_lid; int /*<<< orphan*/  primary_remote_gid; int /*<<< orphan*/  primary_local_gid; int /*<<< orphan*/  primary_remote_lid; int /*<<< orphan*/  primary_local_lid; } ;

/* Variables and functions */
 scalar_t__ SA_PATH_REC_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC0 (struct cm_req_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_path_rec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sa_path_rec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cm_req_msg *req_msg,
					struct sa_path_rec *primary_path,
					struct sa_path_rec *alt_path)
{
	u32 lid;

	if (primary_path->rec_type != SA_PATH_REC_TYPE_OPA) {
		FUNC3(primary_path,
				 FUNC1(req_msg->primary_local_lid));
		FUNC4(primary_path,
				 FUNC1(req_msg->primary_remote_lid));
	} else {
		lid = FUNC2(&req_msg->primary_local_gid);
		FUNC3(primary_path, lid);

		lid = FUNC2(&req_msg->primary_remote_gid);
		FUNC4(primary_path, lid);
	}

	if (!FUNC0(req_msg))
		return;

	if (alt_path->rec_type != SA_PATH_REC_TYPE_OPA) {
		FUNC3(alt_path, FUNC1(req_msg->alt_local_lid));
		FUNC4(alt_path, FUNC1(req_msg->alt_remote_lid));
	} else {
		lid = FUNC2(&req_msg->alt_local_gid);
		FUNC3(alt_path, lid);

		lid = FUNC2(&req_msg->alt_remote_gid);
		FUNC4(alt_path, lid);
	}
}