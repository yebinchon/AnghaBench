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
struct platform_device {int dummy; } ;
struct mox_rwtm {int /*<<< orphan*/  mbox; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mox_rwtm_attrs ; 
 struct mox_rwtm* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mox_rwtm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mox_rwtm *rwtm = FUNC2(pdev);

	FUNC4(FUNC3(rwtm), mox_rwtm_attrs);
	FUNC0(FUNC3(rwtm));
	FUNC1(rwtm->mbox);

	return 0;
}