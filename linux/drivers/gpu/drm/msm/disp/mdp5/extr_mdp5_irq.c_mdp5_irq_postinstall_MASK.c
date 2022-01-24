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
struct mdp_kms {int dummy; } ;
struct mdp_irq {int irqmask; int /*<<< orphan*/  irq; } ;
struct mdp5_kms {struct mdp_irq error_handler; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int MDP5_IRQ_INTF0_UNDER_RUN ; 
 int MDP5_IRQ_INTF1_UNDER_RUN ; 
 int MDP5_IRQ_INTF2_UNDER_RUN ; 
 int MDP5_IRQ_INTF3_UNDER_RUN ; 
 int /*<<< orphan*/  mdp5_irq_error_handler ; 
 int /*<<< orphan*/  FUNC0 (struct mdp_kms*,struct mdp_irq*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct mdp5_kms* FUNC3 (struct mdp_kms*) ; 
 struct mdp_kms* FUNC4 (struct msm_kms*) ; 

int FUNC5(struct msm_kms *kms)
{
	struct mdp_kms *mdp_kms = FUNC4(kms);
	struct mdp5_kms *mdp5_kms = FUNC3(mdp_kms);
	struct device *dev = &mdp5_kms->pdev->dev;
	struct mdp_irq *error_handler = &mdp5_kms->error_handler;

	error_handler->irq = mdp5_irq_error_handler;
	error_handler->irqmask = MDP5_IRQ_INTF0_UNDER_RUN |
			MDP5_IRQ_INTF1_UNDER_RUN |
			MDP5_IRQ_INTF2_UNDER_RUN |
			MDP5_IRQ_INTF3_UNDER_RUN;

	FUNC1(dev);
	FUNC0(mdp_kms, error_handler);
	FUNC2(dev);

	return 0;
}