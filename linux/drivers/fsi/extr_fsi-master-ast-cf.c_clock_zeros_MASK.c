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
struct fsi_master_acf {int dummy; } ;

/* Variables and functions */
 int CMD_IDLE_CLOCKS ; 
 int CMD_REG_CLEN_SHIFT ; 
 int FUNC0 (struct fsi_master_acf*,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct fsi_master_acf *master, int count)
{
	while (count) {
		int rc, lcnt = FUNC1(count, 255);

		rc = FUNC0(master,
				      CMD_IDLE_CLOCKS | (lcnt << CMD_REG_CLEN_SHIFT));
		if (rc)
			return rc;
		count -= lcnt;
	}
	return 0;
}