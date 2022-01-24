#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct cxd2880_tnrdmd {TYPE_1__* io; } ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_3__ {int (* write_reg ) (TYPE_1__*,int /*<<< orphan*/ ,int,int) ;int (* read_regs ) (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXD2880_IO_TGT_DMD ; 
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,int*,int*,int*) ; 
 int FUNC1 (struct cxd2880_tnrdmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxd2880_tnrdmd*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int) ; 

__attribute__((used)) static int FUNC5(struct cxd2880_tnrdmd *tnr_dmd,
			      u16 *reg_value)
{
	u8 sync_state = 0;
	u8 ts_lock = 0;
	u8 unlock_detected = 0;
	u8 data[2];
	int ret;

	if (!tnr_dmd || !reg_value)
		return -EINVAL;

	ret = FUNC1(tnr_dmd);
	if (ret)
		return ret;

	ret =
	    FUNC0(tnr_dmd, &sync_state,
					       &ts_lock,
					       &unlock_detected);
	if (ret) {
		FUNC2(tnr_dmd);
		return ret;
	}

	if (sync_state != 6) {
		FUNC2(tnr_dmd);
		return -EAGAIN;
	}

	ret = tnr_dmd->io->write_reg(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0x00, 0x0b);
	if (ret) {
		FUNC2(tnr_dmd);
		return ret;
	}

	ret = tnr_dmd->io->read_regs(tnr_dmd->io,
				     CXD2880_IO_TGT_DMD,
				     0x13, data, sizeof(data));
	if (ret) {
		FUNC2(tnr_dmd);
		return ret;
	}

	FUNC2(tnr_dmd);

	*reg_value = (data[0] << 8) | data[1];

	return ret;
}