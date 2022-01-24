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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mdp5_kms {int num_intfs; int /*<<< orphan*/  glob_state_lock; int /*<<< orphan*/  glob_state; scalar_t__ rpm_enabled; int /*<<< orphan*/ * intfs; scalar_t__ cfg; scalar_t__ smp; scalar_t__ ctlm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct mdp5_kms* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct platform_device *pdev)
{
	struct mdp5_kms *mdp5_kms = FUNC6(pdev);
	int i;

	if (mdp5_kms->ctlm)
		FUNC4(mdp5_kms->ctlm);
	if (mdp5_kms->smp)
		FUNC5(mdp5_kms->smp);
	if (mdp5_kms->cfg)
		FUNC3(mdp5_kms->cfg);

	for (i = 0; i < mdp5_kms->num_intfs; i++)
		FUNC2(mdp5_kms->intfs[i]);

	if (mdp5_kms->rpm_enabled)
		FUNC7(&pdev->dev);

	FUNC0(&mdp5_kms->glob_state);
	FUNC1(&mdp5_kms->glob_state_lock);
}