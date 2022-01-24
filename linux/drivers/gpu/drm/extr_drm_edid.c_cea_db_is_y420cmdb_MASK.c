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

/* Variables and functions */
 scalar_t__ EXT_VIDEO_CAP_BLOCK_Y420CMDB ; 
 scalar_t__ USE_EXTENDED_TAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool FUNC3(const u8 *db)
{
	if (FUNC2(db) != USE_EXTENDED_TAG)
		return false;

	if (!FUNC1(db))
		return false;

	if (FUNC0(db) != EXT_VIDEO_CAP_BLOCK_Y420CMDB)
		return false;

	return true;
}