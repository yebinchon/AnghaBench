#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dbe; int sbe; int type; int syn; int wayidx; } ;
union cvmx_l2c_err_ttgx {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int dbe; int sbe; int vdbe; int vsbe; int type; int syn; int wayidx; } ;
union cvmx_l2c_err_tdtx {void* u64; TYPE_1__ s; } ;
struct edac_device_ctl_info {int dummy; } ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct edac_device_ctl_info*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct edac_device_ctl_info*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC7(struct edac_device_ctl_info *l2c, int tad)
{
	union cvmx_l2c_err_tdtx err_tdtx, err_tdtx_reset;
	union cvmx_l2c_err_ttgx err_ttgx, err_ttgx_reset;
	char buf1[64];
	char buf2[80];

	err_tdtx_reset.u64 = 0;
	err_tdtx.u64 = FUNC2(FUNC0(tad));
	if (err_tdtx.s.dbe || err_tdtx.s.sbe ||
	    err_tdtx.s.vdbe || err_tdtx.s.vsbe)
		FUNC6(buf1, sizeof(buf1),
			 "type:%d, syn:0x%x, way:%d",
			 err_tdtx.s.type, err_tdtx.s.syn, err_tdtx.s.wayidx);

	if (err_tdtx.s.dbe) {
		FUNC6(buf2, sizeof(buf2),
			 "L2D Double bit error (detected):%s", buf1);
		err_tdtx_reset.s.dbe = 1;
		FUNC5(l2c, tad, 1, buf2);
	}
	if (err_tdtx.s.sbe) {
		FUNC6(buf2, sizeof(buf2),
			 "L2D Single bit error (corrected):%s", buf1);
		err_tdtx_reset.s.sbe = 1;
		FUNC4(l2c, tad, 1, buf2);
	}
	if (err_tdtx.s.vdbe) {
		FUNC6(buf2, sizeof(buf2),
			 "VBF Double bit error (detected):%s", buf1);
		err_tdtx_reset.s.vdbe = 1;
		FUNC5(l2c, tad, 1, buf2);
	}
	if (err_tdtx.s.vsbe) {
		FUNC6(buf2, sizeof(buf2),
			 "VBF Single bit error (corrected):%s", buf1);
		err_tdtx_reset.s.vsbe = 1;
		FUNC4(l2c, tad, 1, buf2);
	}
	if (err_tdtx_reset.u64)
		FUNC3(FUNC0(tad), err_tdtx_reset.u64);

	err_ttgx_reset.u64 = 0;
	err_ttgx.u64 = FUNC2(FUNC1(tad));

	if (err_ttgx.s.dbe || err_ttgx.s.sbe)
		FUNC6(buf1, sizeof(buf1),
			 "type:%d, syn:0x%x, way:%d",
			 err_ttgx.s.type, err_ttgx.s.syn, err_ttgx.s.wayidx);

	if (err_ttgx.s.dbe) {
		FUNC6(buf2, sizeof(buf2),
			 "Tag Double bit error (detected):%s", buf1);
		err_ttgx_reset.s.dbe = 1;
		FUNC5(l2c, tad, 0, buf2);
	}
	if (err_ttgx.s.sbe) {
		FUNC6(buf2, sizeof(buf2),
			 "Tag Single bit error (corrected):%s", buf1);
		err_ttgx_reset.s.sbe = 1;
		FUNC4(l2c, tad, 0, buf2);
	}
	if (err_ttgx_reset.u64)
		FUNC3(FUNC1(tad), err_ttgx_reset.u64);
}