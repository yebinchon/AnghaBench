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
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct ccp_data {int /*<<< orphan*/  dm_wa; int /*<<< orphan*/  sg_wa; } ;
struct ccp_cmd_queue {TYPE_1__* ccp; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccp_data*,struct ccp_cmd_queue*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ccp_cmd_queue*,unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ccp_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ccp_data *data, struct ccp_cmd_queue *cmd_q,
			 struct scatterlist *sg, u64 sg_len,
			 unsigned int dm_len,
			 enum dma_data_direction dir)
{
	int ret;

	FUNC3(data, 0, sizeof(*data));

	ret = FUNC2(&data->sg_wa, cmd_q->ccp->dev, sg, sg_len,
				   dir);
	if (ret)
		goto e_err;

	ret = FUNC1(&data->dm_wa, cmd_q, dm_len, dir);
	if (ret)
		goto e_err;

	return 0;

e_err:
	FUNC0(data, cmd_q);

	return ret;
}