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
struct host1x_firewall {int /*<<< orphan*/  reloc; int /*<<< orphan*/  num_relocs; int /*<<< orphan*/  offset; int /*<<< orphan*/  cmdbuf; int /*<<< orphan*/  class; int /*<<< orphan*/  dev; TYPE_1__* job; } ;
struct TYPE_2__ {scalar_t__ (* is_addr_reg ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct host1x_firewall *fw, unsigned long offset)
{
	if (!fw->job->is_addr_reg)
		return 0;

	if (fw->job->is_addr_reg(fw->dev, fw->class, offset)) {
		if (!fw->num_relocs)
			return -EINVAL;

		if (!FUNC0(fw->reloc, fw->cmdbuf, fw->offset))
			return -EINVAL;

		fw->num_relocs--;
		fw->reloc++;
	}

	return 0;
}