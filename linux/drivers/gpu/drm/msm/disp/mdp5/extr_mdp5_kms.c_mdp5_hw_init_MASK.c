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
struct msm_kms {int dummy; } ;
struct mdp5_kms {int /*<<< orphan*/  ctlm; int /*<<< orphan*/  resource_lock; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MDP5_DISP_INTF_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_kms* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_kms*) ; 

__attribute__((used)) static int FUNC8(struct msm_kms *kms)
{
	struct mdp5_kms *mdp5_kms = FUNC6(FUNC7(kms));
	struct device *dev = &mdp5_kms->pdev->dev;
	unsigned long flags;

	FUNC2(dev);

	/* Magic unknown register writes:
	 *
	 *    W VBIF:0x004 00000001      (mdss_mdp.c:839)
	 *    W MDP5:0x2e0 0xe9          (mdss_mdp.c:839)
	 *    W MDP5:0x2e4 0x55          (mdss_mdp.c:839)
	 *    W MDP5:0x3ac 0xc0000ccc    (mdss_mdp.c:839)
	 *    W MDP5:0x3b4 0xc0000ccc    (mdss_mdp.c:839)
	 *    W MDP5:0x3bc 0xcccccc      (mdss_mdp.c:839)
	 *    W MDP5:0x4a8 0xcccc0c0     (mdss_mdp.c:839)
	 *    W MDP5:0x4b0 0xccccc0c0    (mdss_mdp.c:839)
	 *    W MDP5:0x4b8 0xccccc000    (mdss_mdp.c:839)
	 *
	 * Downstream fbdev driver gets these register offsets/values
	 * from DT.. not really sure what these registers are or if
	 * different values for different boards/SoC's, etc.  I guess
	 * they are the golden registers.
	 *
	 * Not setting these does not seem to cause any problem.  But
	 * we may be getting lucky with the bootloader initializing
	 * them for us.  OTOH, if we can always count on the bootloader
	 * setting the golden registers, then perhaps we don't need to
	 * care.
	 */

	FUNC4(&mdp5_kms->resource_lock, flags);
	FUNC1(mdp5_kms, REG_MDP5_DISP_INTF_SEL, 0);
	FUNC5(&mdp5_kms->resource_lock, flags);

	FUNC0(mdp5_kms->ctlm);

	FUNC3(dev);

	return 0;
}