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
typedef  int u8 ;
struct cxd2880_tnrdmd {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXD2880_IO_TGT_SYS ; 
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ; 
 scalar_t__ CXD2880_TNRDMD_STATE_SLEEP ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,int /*<<< orphan*/ ,int,int,int,int) ; 

int FUNC1(struct cxd2880_tnrdmd *tnr_dmd,
			      u8 id, u8 value)
{
	if (!tnr_dmd)
		return -EINVAL;

	if (id > 2)
		return -EINVAL;

	if (tnr_dmd->state != CXD2880_TNRDMD_STATE_SLEEP &&
	    tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
		return -EINVAL;

	return FUNC0(tnr_dmd,
						    CXD2880_IO_TGT_SYS,
						    0x00, 0x46,
						    value ? (1 << id) : 0,
						    1 << id);
}