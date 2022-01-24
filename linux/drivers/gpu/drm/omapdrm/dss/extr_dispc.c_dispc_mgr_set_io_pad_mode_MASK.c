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
typedef  int /*<<< orphan*/  u32 ;
struct dispc_device {int dummy; } ;
typedef  enum dss_io_pad_mode { ____Placeholder_dss_io_pad_mode } dss_io_pad_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DISPC_CONTROL ; 
#define  DSS_IO_PAD_MODE_BYPASS 130 
#define  DSS_IO_PAD_MODE_RESET 129 
#define  DSS_IO_PAD_MODE_RFBI 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dispc_device *dispc,
				      enum dss_io_pad_mode mode)
{
	u32 l;
	int gpout0, gpout1;

	switch (mode) {
	case DSS_IO_PAD_MODE_RESET:
		gpout0 = 0;
		gpout1 = 0;
		break;
	case DSS_IO_PAD_MODE_RFBI:
		gpout0 = 1;
		gpout1 = 0;
		break;
	case DSS_IO_PAD_MODE_BYPASS:
		gpout0 = 1;
		gpout1 = 1;
		break;
	default:
		FUNC0();
		return;
	}

	l = FUNC2(dispc, DISPC_CONTROL);
	l = FUNC1(l, gpout0, 15, 15);
	l = FUNC1(l, gpout1, 16, 16);
	FUNC3(dispc, DISPC_CONTROL, l);
}