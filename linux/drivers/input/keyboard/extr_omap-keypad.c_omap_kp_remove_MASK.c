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
struct omap_kp {int /*<<< orphan*/  input; int /*<<< orphan*/  timer; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ OMAP1_MPUIO_BASE ; 
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct omap_kp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_kp*) ; 
 int /*<<< orphan*/  kp_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 struct omap_kp* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct omap_kp *omap_kp = FUNC5(pdev);

	/* disable keypad interrupt handling */
	FUNC6(&kp_tasklet);
	FUNC4(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);
	FUNC1(omap_kp->irq, omap_kp);

	FUNC0(&omap_kp->timer);
	FUNC7(&kp_tasklet);

	/* unregister everything */
	FUNC2(omap_kp->input);

	FUNC3(omap_kp);

	return 0;
}