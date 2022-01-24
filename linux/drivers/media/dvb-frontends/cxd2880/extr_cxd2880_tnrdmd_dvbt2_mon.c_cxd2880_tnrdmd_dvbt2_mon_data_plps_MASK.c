#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; scalar_t__ state; scalar_t__ sys; TYPE_1__* io; } ;
struct TYPE_7__ {int (* write_reg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int) ;int (* read_regs ) (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ;} ;

/* Variables and functions */
 scalar_t__ CXD2880_DTV_SYS_DVBT2 ; 
 int /*<<< orphan*/  CXD2880_IO_TGT_DMD ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 scalar_t__ CXD2880_TNRDMD_STATE_ACTIVE ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxd2880_tnrdmd*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ; 

int FUNC8(struct cxd2880_tnrdmd
				       *tnr_dmd, u8 *plp_ids,
				       u8 *num_plps)
{
	u8 l1_post_ok = 0;
	int ret;

	if (!tnr_dmd || !num_plps)
		return -EINVAL;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		return -EINVAL;

	if (tnr_dmd->state != CXD2880_TNRDMD_STATE_ACTIVE)
		return -EINVAL;

	if (tnr_dmd->sys != CXD2880_DTV_SYS_DVBT2)
		return -EINVAL;

	ret = tnr_dmd->io->write_reg(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0x00, 0x0b);
	if (ret)
		return ret;

	ret = FUNC0(tnr_dmd);
	if (ret)
		return ret;

	ret = tnr_dmd->io->read_regs(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0x86, &l1_post_ok, 1);
	if (ret) {
		FUNC1(tnr_dmd);
		return ret;
	}

	if (!(l1_post_ok & 0x01)) {
		FUNC1(tnr_dmd);
		return -EAGAIN;
	}

	ret = tnr_dmd->io->read_regs(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0xc1, num_plps, 1);
	if (ret) {
		FUNC1(tnr_dmd);
		return ret;
	}

	if (*num_plps == 0) {
		FUNC1(tnr_dmd);
		return -EINVAL;
	}

	if (!plp_ids) {
		FUNC1(tnr_dmd);
		return 0;
	}

	ret = tnr_dmd->io->read_regs(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0xc2,
				     plp_ids,
				     ((*num_plps > 62) ?
				     62 : *num_plps));
	if (ret) {
		FUNC1(tnr_dmd);
		return ret;
	}

	if (*num_plps > 62) {
		ret = tnr_dmd->io->write_reg(tnr_dmd->io,
					     CXD2880_IO_TGT_DMD,
					     0x00, 0x0c);
		if (ret) {
			FUNC1(tnr_dmd);
			return ret;
		}

		ret = tnr_dmd->io->read_regs(tnr_dmd->io,
					     CXD2880_IO_TGT_DMD,
					     0x10, plp_ids + 62,
					     *num_plps - 62);
		if (ret) {
			FUNC1(tnr_dmd);
			return ret;
		}
	}

	FUNC1(tnr_dmd);

	return 0;
}