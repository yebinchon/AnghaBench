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
struct TYPE_2__ {int /*<<< orphan*/  cluster_name; } ;
struct mddev {TYPE_1__ bitmap_info; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  slot_number; } ;
struct dlm_slot {scalar_t__ slot; int /*<<< orphan*/  nodeid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mddev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg, struct dlm_slot *slot)
{
	struct mddev *mddev = arg;
	struct md_cluster_info *cinfo = mddev->cluster_info;

	FUNC1("md-cluster: %s Node %d/%d down. My slot: %d. Initiating recovery.\n",
			mddev->bitmap_info.cluster_name,
			slot->nodeid, slot->slot,
			cinfo->slot_number);
	/* deduct one since dlm slot starts from one while the num of
	 * cluster-md begins with 0 */
	FUNC0(mddev, slot->slot - 1);
}