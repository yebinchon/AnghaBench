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
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_raid_superblock {int /*<<< orphan*/ * extended_failed_devices; int /*<<< orphan*/  compat_features; int /*<<< orphan*/  failed_devices; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FEATURE_FLAG_SUPPORTS_V190 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dm_raid_superblock *sb, uint64_t *failed_devices)
{
	failed_devices[0] = FUNC2(sb->failed_devices);
	FUNC3(failed_devices + 1, 0, sizeof(sb->extended_failed_devices));

	if (FUNC1(sb->compat_features) & FEATURE_FLAG_SUPPORTS_V190) {
		int i = FUNC0(sb->extended_failed_devices);

		while (i--)
			failed_devices[i+1] = FUNC2(sb->extended_failed_devices[i]);
	}
}