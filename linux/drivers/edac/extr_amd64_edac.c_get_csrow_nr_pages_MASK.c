#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct amd64_pvt {int dbam1; int dbam0; TYPE_1__* ops; int /*<<< orphan*/  umc; } ;
struct TYPE_2__ {int (* dbam_to_cs ) (struct amd64_pvt*,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct amd64_pvt*) ; 
 int FUNC3 (struct amd64_pvt*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u32 FUNC4(struct amd64_pvt *pvt, u8 dct, int csrow_nr_orig)
{
	u32 dbam = dct ? pvt->dbam1 : pvt->dbam0;
	int csrow_nr = csrow_nr_orig;
	u32 cs_mode, nr_pages;

	if (!pvt->umc) {
		csrow_nr >>= 1;
		cs_mode = FUNC0(csrow_nr, dbam);
	} else {
		cs_mode = FUNC2(csrow_nr >> 1, dct, pvt);
	}

	nr_pages   = pvt->ops->dbam_to_cs(pvt, dct, cs_mode, csrow_nr);
	nr_pages <<= 20 - PAGE_SHIFT;

	FUNC1(0, "csrow: %d, channel: %d, DBAM idx: %d\n",
		    csrow_nr_orig, dct,  cs_mode);
	FUNC1(0, "nr_pages/channel: %u\n", nr_pages);

	return nr_pages;
}