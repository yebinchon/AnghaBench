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
struct scatterlist {int dummy; } ;
struct qup_i2c_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,void*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct scatterlist *sg, void *buf,
			  unsigned int buflen, struct qup_i2c_dev *qup,
			  int dir)
{
	int ret;

	FUNC1(sg, buf, buflen);
	ret = FUNC0(qup->dev, sg, 1, dir);
	if (!ret)
		return -EINVAL;

	return 0;
}