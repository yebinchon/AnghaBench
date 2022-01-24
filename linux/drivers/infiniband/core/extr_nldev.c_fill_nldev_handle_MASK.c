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
struct sk_buff {int dummy; } ;
struct ib_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DEV_INDEX ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_DEV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *msg, struct ib_device *device)
{
	if (FUNC2(msg, RDMA_NLDEV_ATTR_DEV_INDEX, device->index))
		return -EMSGSIZE;
	if (FUNC1(msg, RDMA_NLDEV_ATTR_DEV_NAME,
			   FUNC0(&device->dev)))
		return -EMSGSIZE;

	return 0;
}