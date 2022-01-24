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
struct kvmgt_guest_info {int /*<<< orphan*/  vgpu; int /*<<< orphan*/  kvm; int /*<<< orphan*/  track_node; int /*<<< orphan*/  debugfs_cache_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmgt_guest_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvmgt_guest_info*) ; 

__attribute__((used)) static bool FUNC6(struct kvmgt_guest_info *info)
{
	FUNC0(info->debugfs_cache_entries);

	FUNC2(info->kvm, &info->track_node);
	FUNC3(info->kvm);
	FUNC4(info);
	FUNC1(info->vgpu);
	FUNC5(info);

	return true;
}