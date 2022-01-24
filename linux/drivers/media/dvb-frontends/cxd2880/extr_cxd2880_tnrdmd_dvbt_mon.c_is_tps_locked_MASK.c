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
struct cxd2880_tnrdmd {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC1(struct cxd2880_tnrdmd *tnr_dmd)
{
	u8 sync = 0;
	u8 tslock = 0;
	u8 early_unlock = 0;
	int ret;

	if (!tnr_dmd)
		return -EINVAL;

	ret =
	    FUNC0(tnr_dmd, &sync, &tslock,
					      &early_unlock);
	if (ret)
		return ret;

	if (sync != 6)
		return -EAGAIN;

	return 0;
}