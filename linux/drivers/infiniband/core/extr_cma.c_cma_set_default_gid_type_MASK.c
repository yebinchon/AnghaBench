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
struct cma_device {int* default_gid_type; int /*<<< orphan*/  device; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

int FUNC3(struct cma_device *cma_dev,
			     unsigned int port,
			     enum ib_gid_type default_gid_type)
{
	unsigned long supported_gids;

	if (!FUNC0(cma_dev->device, port))
		return -EINVAL;

	supported_gids = FUNC2(cma_dev->device, port);

	if (!(supported_gids & 1 << default_gid_type))
		return -EINVAL;

	cma_dev->default_gid_type[port - FUNC1(cma_dev->device)] =
		default_gid_type;

	return 0;
}