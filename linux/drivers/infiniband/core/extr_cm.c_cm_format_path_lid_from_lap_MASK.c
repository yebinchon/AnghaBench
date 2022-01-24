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
struct cm_lap_msg {int /*<<< orphan*/  alt_remote_gid; int /*<<< orphan*/  alt_local_gid; int /*<<< orphan*/  alt_remote_lid; int /*<<< orphan*/  alt_local_lid; } ;

/* Variables and functions */
 scalar_t__ SA_PATH_REC_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sa_path_rec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_path_rec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cm_lap_msg *lap_msg,
					struct sa_path_rec *path)
{
	u32 lid;

	if (path->rec_type != SA_PATH_REC_TYPE_OPA) {
		FUNC2(path, FUNC0(lap_msg->alt_local_lid));
		FUNC3(path, FUNC0(lap_msg->alt_remote_lid));
	} else {
		lid = FUNC1(&lap_msg->alt_local_gid);
		FUNC2(path, lid);

		lid = FUNC1(&lap_msg->alt_remote_gid);
		FUNC3(path, lid);
	}
}