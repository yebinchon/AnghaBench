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
struct ib_device {int dummy; } ;
struct cma_device {struct cma_device* default_gid_type; struct cma_device* default_roce_tos; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cma_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cma_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ib_device *device, void *client_data)
{
	struct cma_device *cma_dev = client_data;

	if (!cma_dev)
		return;

	FUNC3(&lock);
	FUNC2(&cma_dev->list);
	FUNC4(&lock);

	FUNC0(cma_dev);
	FUNC1(cma_dev->default_roce_tos);
	FUNC1(cma_dev->default_gid_type);
	FUNC1(cma_dev);
}