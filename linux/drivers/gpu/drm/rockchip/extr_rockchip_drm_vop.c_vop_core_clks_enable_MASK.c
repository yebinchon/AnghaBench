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
struct vop {int /*<<< orphan*/  hclk; int /*<<< orphan*/  aclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vop *vop)
{
	int ret;

	ret = FUNC1(vop->hclk);
	if (ret < 0)
		return ret;

	ret = FUNC1(vop->aclk);
	if (ret < 0)
		goto err_disable_hclk;

	return 0;

err_disable_hclk:
	FUNC0(vop->hclk);
	return ret;
}