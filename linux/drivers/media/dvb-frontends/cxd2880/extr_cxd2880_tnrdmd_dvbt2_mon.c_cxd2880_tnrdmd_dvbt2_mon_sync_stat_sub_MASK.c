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
struct cxd2880_tnrdmd {scalar_t__ diver_mode; int /*<<< orphan*/  diver_sub; } ;

/* Variables and functions */
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct cxd2880_tnrdmd
					   *tnr_dmd,
					   u8 *sync_stat,
					   u8 *unlock_detected)
{
	u8 ts_lock_stat = 0;

	if (!tnr_dmd || !sync_stat || !unlock_detected)
		return -EINVAL;

	if (tnr_dmd->diver_mode != CXD2880_TNRDMD_DIVERMODE_MAIN)
		return -EINVAL;

	return FUNC0(tnr_dmd->diver_sub,
						  sync_stat,
						  &ts_lock_stat,
						  unlock_detected);
}