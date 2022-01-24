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
typedef  int /*<<< orphan*/  uint32_t ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int slot_number; int /*<<< orphan*/  state; int /*<<< orphan*/  completion; } ;
struct dlm_slot {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_CLUSTER_BEGIN_JOIN_CLUSTER ; 
 int /*<<< orphan*/  MD_CLUSTER_SUSPEND_READ_BALANCING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *arg, struct dlm_slot *slots,
		int num_slots, int our_slot,
		uint32_t generation)
{
	struct mddev *mddev = arg;
	struct md_cluster_info *cinfo = mddev->cluster_info;

	cinfo->slot_number = our_slot;
	/* completion is only need to be complete when node join cluster,
	 * it doesn't need to run during another node's failure */
	if (FUNC2(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state)) {
		FUNC1(&cinfo->completion);
		FUNC0(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state);
	}
	FUNC0(MD_CLUSTER_SUSPEND_READ_BALANCING, &cinfo->state);
}