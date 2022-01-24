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
typedef  int /*<<< orphan*/  u16 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; scalar_t__ sys; } ;

/* Variables and functions */
 scalar_t__ CXD2880_DTV_SYS_DVBT2 ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SINGLE ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,int*,int*,int*) ; 
 int FUNC1 (struct cxd2880_tnrdmd*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct cxd2880_tnrdmd*,int /*<<< orphan*/ *) ; 

int FUNC3(struct cxd2880_tnrdmd *tnr_dmd,
				 int *snr)
{
	u16 reg_value = 0;
	int ret;

	if (!tnr_dmd || !snr)
		return -EINVAL;

	*snr = -1000 * 1000;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		return -EINVAL;

	if (tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
		return -EINVAL;

	if (tnr_dmd->sys != CXD2880_DTV_SYS_DVBT2)
		return -EINVAL;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SINGLE) {
		ret = FUNC2(tnr_dmd, &reg_value);
		if (ret)
			return ret;

		ret = FUNC1(tnr_dmd, reg_value, snr);
	} else {
		int snr_main = 0;
		int snr_sub = 0;

		ret =
		    FUNC0(tnr_dmd, snr, &snr_main,
						       &snr_sub);
	}

	return ret;
}