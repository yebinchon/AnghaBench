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
struct wf_fcu_priv {int rpm_shift; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct wf_fcu_priv*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC2 (struct wf_fcu_priv*,int,unsigned char*,int) ; 

__attribute__((used)) static int FUNC3(struct wf_fcu_priv *pv)
{
	unsigned char buf = 0xff;
	int rc;

	rc = FUNC2(pv, 0xe, &buf, 1);
	if (rc < 0)
		return -EIO;
	rc = FUNC2(pv, 0x2e, &buf, 1);
	if (rc < 0)
		return -EIO;
	rc = FUNC1(pv, 0, &buf, 1);
	if (rc < 0)
		return -EIO;
	pv->rpm_shift = (buf == 1) ? 2 : 3;

	FUNC0("wf_fcu: FCU Initialized, RPM fan shift is %d\n",
		 pv->rpm_shift);

	return 0;
}