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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct drm_dp_mst_topology_mgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(struct drm_dp_mst_topology_mgr *mgr,
				 u8 *guid)
{
	u64 salt;

	if (FUNC1(guid, 0, 16))
		return true;

	salt = FUNC0();

	FUNC2(&guid[0], &salt, sizeof(u64));
	FUNC2(&guid[8], &salt, sizeof(u64));

	return false;
}