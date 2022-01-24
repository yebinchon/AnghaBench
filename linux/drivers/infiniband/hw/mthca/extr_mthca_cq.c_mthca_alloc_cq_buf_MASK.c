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
struct mthca_dev {int /*<<< orphan*/  driver_pd; } ;
struct mthca_cq_buf {int /*<<< orphan*/  mr; int /*<<< orphan*/  is_direct; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int MTHCA_CQ_ENTRY_SIZE ; 
 int /*<<< orphan*/  MTHCA_MAX_DIRECT_CQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mthca_cq_buf*,int) ; 
 int FUNC1 (struct mthca_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct mthca_dev *dev, struct mthca_cq_buf *buf, int nent)
{
	int ret;
	int i;

	ret = FUNC1(dev, nent * MTHCA_CQ_ENTRY_SIZE,
			      MTHCA_MAX_DIRECT_CQ_SIZE,
			      &buf->queue, &buf->is_direct,
			      &dev->driver_pd, 1, &buf->mr);
	if (ret)
		return ret;

	for (i = 0; i < nent; ++i)
		FUNC2(FUNC0(buf, i));

	return 0;
}