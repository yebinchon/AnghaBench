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
typedef  int /*<<< orphan*/  u16 ;
struct ocrdma_dev {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int FUNC0 (struct ocrdma_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ocrdma_dev *dev, u16 pd_id,
				   bool dpp_pool)
{
	int status;

	FUNC1(&dev->dev_lock);
	status = FUNC0(dev, pd_id, dpp_pool);
	FUNC2(&dev->dev_lock);
	return status;
}