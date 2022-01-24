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
typedef  int /*<<< orphan*/  u8 ;
struct cma_device {int /*<<< orphan*/  device; int /*<<< orphan*/ * default_roce_tos; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct cma_device *cma_dev, unsigned int port,
			     u8 default_roce_tos)
{
	if (!FUNC0(cma_dev->device, port))
		return -EINVAL;

	cma_dev->default_roce_tos[port - FUNC1(cma_dev->device)] =
		 default_roce_tos;

	return 0;
}