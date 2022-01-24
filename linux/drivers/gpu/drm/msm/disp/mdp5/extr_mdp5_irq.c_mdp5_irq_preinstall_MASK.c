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
struct mdp5_kms {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_MDP5_INTR_CLEAR ; 
 int /*<<< orphan*/  REG_MDP5_INTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct mdp5_kms* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_kms*) ; 

void FUNC5(struct msm_kms *kms)
{
	struct mdp5_kms *mdp5_kms = FUNC3(FUNC4(kms));
	struct device *dev = &mdp5_kms->pdev->dev;

	FUNC1(dev);
	FUNC0(mdp5_kms, REG_MDP5_INTR_CLEAR, 0xffffffff);
	FUNC0(mdp5_kms, REG_MDP5_INTR_EN, 0x00000000);
	FUNC2(dev);
}