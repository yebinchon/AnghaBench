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
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__ recovery_thread; int /*<<< orphan*/  recovery_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct mddev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  recover_bitmaps ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mddev *mddev, int slot)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;

	FUNC3(slot, &cinfo->recovery_map);
	if (!cinfo->recovery_thread) {
		cinfo->recovery_thread = FUNC0(recover_bitmaps,
				mddev, "recover");
		if (!cinfo->recovery_thread) {
			FUNC2("md-cluster: Could not create recovery thread\n");
			return;
		}
	}
	FUNC1(cinfo->recovery_thread);
}