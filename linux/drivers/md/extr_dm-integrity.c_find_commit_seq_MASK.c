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
struct dm_integrity_c {int dummy; } ;
typedef  scalar_t__ commit_id_t ;

/* Variables and functions */
 int EIO ; 
 unsigned char N_COMMIT_IDS ; 
 scalar_t__ FUNC0 (struct dm_integrity_c*,unsigned int,unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_integrity_c*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct dm_integrity_c *ic, unsigned i, unsigned j, commit_id_t id)
{
	unsigned char k;
	for (k = 0; k < N_COMMIT_IDS; k++) {
		if (FUNC0(ic, i, j, k) == id)
			return k;
	}
	FUNC1(ic, "journal commit id", -EIO);
	return -EIO;
}