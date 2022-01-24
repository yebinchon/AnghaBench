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
struct stp_master {int /*<<< orphan*/  chan_map; int /*<<< orphan*/  nr_free; } ;
struct stm_device {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 struct stp_master* FUNC1 (struct stm_device*,unsigned int) ; 
 int FUNC2 (struct stm_device*,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct stm_device *stm, unsigned int width,
		     unsigned int *mstart, unsigned int mend,
		     unsigned int *cstart, unsigned int cend)
{
	struct stp_master *master;
	unsigned int midx;
	int pos, err;

	for (midx = *mstart; midx <= mend; midx++) {
		if (!FUNC1(stm, midx)) {
			err = FUNC2(stm, midx);
			if (err)
				return err;
		}

		master = FUNC1(stm, midx);

		if (!master->nr_free)
			continue;

		pos = FUNC0(master->chan_map, *cstart, cend,
					 width);
		if (pos < 0)
			continue;

		*mstart = midx;
		*cstart = pos;
		return 0;
	}

	return -ENOSPC;
}